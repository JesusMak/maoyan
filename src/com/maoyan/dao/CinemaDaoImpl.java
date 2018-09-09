package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.Cinema;
import com.maoyan.util.C3P0Util;

public class CinemaDaoImpl {
	private static CinemaDaoImpl cinemaDaoImpl;
	Connection connection = C3P0Util.getConnection();
	// private static Connection connMysql;
	public int rowCount;
	public int pageCount;

	private CinemaDaoImpl() {

	}

	public static CinemaDaoImpl getCinemaDaoImpl() {
		if (cinemaDaoImpl == null) {
			cinemaDaoImpl = new CinemaDaoImpl();
		}
		return cinemaDaoImpl;
	}

	// 添加电影的方法
	public void addCinema(Cinema cinema) {

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"insert into cinema(cinema_name,address,cinema_phone,cinema_server,cinema_server_context,area) values(?,?,?,?,?,?,?)");

			preparedStatement.setString(1, cinema.getCinemaName());
			preparedStatement.setString(2, cinema.getAddress());
			// preparedStatement.setString(4, cinema.getHall());
			preparedStatement.setString(3, cinema.getCinemaPhone());
			preparedStatement.setString(4, cinema.getCinemaServer());
			preparedStatement.setString(5, cinema.getCinemaServerContext());
			preparedStatement.setString(6, cinema.getArea());
			System.out.println(cinema.getAddress());
			int executeUpdate = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	// 荣楚代码

	/**
	 * 娣诲姞鐢靛奖闄俊鎭姛鑳�
	 * 
	 * @param args
	 * @throws SQLException
	 */
	public String insertCinema(Cinema cinema) {
		String cinemaNameDB = null;
		try {
			PreparedStatement pstmt;
			pstmt = connection
					.prepareStatement("insert into cinema(cinema_id,cinema_name,address,hall,area) values(?,?,?,?,?)");
			pstmt.setInt(1, cinema.getCinemaId());
			pstmt.setString(2, cinema.getCinemaName());
			pstmt.setString(3, cinema.getAddress());
			pstmt.setString(4, cinema.getHall());
			pstmt.setString(5, cinema.getArea());

			int result = pstmt.executeUpdate();
			if (result == 0) {
				cinemaNameDB = null;
			} else {
				cinemaNameDB = cinema.getCinemaName();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cinemaNameDB;

	}

	/*
	 * 鍒嗛〉鏌ヨ鐢靛奖闄俊鎭姛鑳�
	 */
	public List<Cinema> queryCinemaByPage(int pageSize, int pageNow, String tagName) {
		List<Cinema> cinemaList = new ArrayList<Cinema>();
		PreparedStatement pstmt = null;

		try {
			if (tagName.equals("000")) {
				pstmt = connection.prepareStatement("select count(cinema_id) from cinema");
			} else {
				pstmt = connection
						.prepareStatement("select count(cinema_id) from cinema where cinema_name like '%万达%'");
			}

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				// 鑾峰彇琛屾暟
				rowCount = rs.getInt(1);
			}
			// 鑾峰彇椤垫暟
			if (rowCount % pageSize == 0) {
				pageCount = rowCount / pageSize;
			} else {
				pageCount = rowCount / pageSize + 1;
			}

			if (tagName.equals("000")) {
				pstmt = connection.prepareStatement("select * from cinema limit ?,?");
			} else if (tagName.equals("001")) {
				pstmt = connection.prepareStatement("select * from cinema where cinema_name like '%万达%' limit ?,?");
			}

			pstmt.setInt(1, (pageNow - 1) * pageSize);
			pstmt.setInt(2, pageSize);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				Cinema cinema = new Cinema();
				cinema.setCinemaId(rs.getInt("cinema_id"));
				cinema.setCinemaName(rs.getString("cinema_name"));
				cinema.setAddress(rs.getString("address"));
				cinema.setArea(rs.getString("area"));
				// cinema.setHall(rs.getString("hall"));
				// cinema.setMinPrice(rs.getFloat("min_price"));
				cinemaList.add(cinema);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("SQLException");
		}
		return cinemaList;
	}

	/*
	 * 鍒犻櫎鐢靛奖闄㈠姛鑳�
	 */
	public String deleteCinema(int cinemaId) {
		String result = null;
		try {
			PreparedStatement pstmt = connection.prepareStatement("delete from cinema where cinema_id=?");
			pstmt.setInt(1, cinemaId);

			int rs = pstmt.executeUpdate();
			if (rs != 0) {
				result = "ok";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("SQLException");
		}
		return result;
	}

	/**
	 * 鏇存柊鐢靛奖闄俊鎭姛鑳�
	 * 
	 * @param args
	 * @throws SQLException
	 */
	public String updateCinema(Cinema cinema) {
		String cinemaNameDB = null;
		try {
			PreparedStatement pstmt;
			pstmt = connection
					.prepareStatement("UPDATE cinema SET cinema_name=?, address=?, hall=?, area=? WHERE (cinema_id=?)");

			pstmt.setString(1, cinema.getCinemaName());
			pstmt.setString(2, cinema.getAddress());
			pstmt.setString(3, cinema.getHall());
			pstmt.setString(4, cinema.getArea());
			pstmt.setInt(5, cinema.getCinemaId());
			int result = pstmt.executeUpdate();
			if (result == 0) {
				cinemaNameDB = null;
			} else {
				cinemaNameDB = cinema.getCinemaName();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cinemaNameDB;

	}

}
