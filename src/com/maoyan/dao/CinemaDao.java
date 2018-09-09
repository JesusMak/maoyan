package com.maoyan.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.Cinema;
import com.maoyan.bean.CinemaPic;
import com.maoyan.util.DBUtil;

public class CinemaDao {

	private static CinemaDao cinemaPicDao;

	public CinemaDao() {

	}

	public static CinemaDao getCinemaPicDao() {
		if (cinemaPicDao == null) {
			cinemaPicDao = new CinemaDao();
		}
		return cinemaPicDao;
	}

	private static Connection conn = DBUtil.getConnetion();
	// 3.通过数据库的连接操作数据库，实现增删改查
	Statement stmt;

	/**
	 * 查询电影院图片信息
	 * 
	 * @return
	 */
	public List<CinemaPic> showCinemaPic() {

		List<CinemaPic> cinemaPic = new ArrayList<CinemaPic>();

		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from cinema_pic");
			CinemaPic cp = null;

			while (rs.next()) {
				cp = new CinemaPic();
				cp.setCinemaPicId(rs.getInt("cinema_pic_id"));
				cp.setCinemaPic(rs.getString("cinema_pic"));
				cp.setCinemaName(rs.getString("cinema_name"));

				cinemaPic.add(cp);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cinemaPic;
	}

	/**
	 * 电影院基本信息
	 * 
	 * @return
	 */
	public List<Cinema> showCinemaInfo() {

		List<Cinema> cinema = new ArrayList<Cinema>();
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from cinema");
			Cinema cma = null;

			while (rs.next()) {
				cma = new Cinema();
				cma.setCinemaId(rs.getInt("cinema_id"));
				cma.setCinemaName(rs.getString("cinema_name"));
				cma.setAddress(rs.getString("address"));
				cma.setCinemaPhone(rs.getString("cinema_phone"));
				cma.setCinemaServer(rs.getString("cinema_server"));
				cma.setCinemaServerContext(rs.getString("cinema_server_context"));

				cinema.add(cma);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cinema;
	}

	/**
	 * 电影院座位信息
	 * 
	 * @return
	 */
	// public List<Seat> showCinemaSeat() {
	//
	// List<Seat> seatList = new ArrayList<Seat>();
	// try {
	// stmt = conn.createStatement();
	// ResultSet rs = stmt.executeQuery("select * from seat");
	// Seat seat = null;
	//
	// while(rs.next()) {
	// seat = new Seat();
	// seat.setSeatId(rs.getInt("seat_id"));
	// seat.setSeatRow(rs.getInt("seat_row"));
	// seat.setSeatCol(rs.getInt("seat_col"));
	// seat.setSeatStatus(rs.getString("seat_status"));
	//
	// seatList.add(seat);
	// }
	//
	//
	// } catch (SQLException e) {
	// e.printStackTrace();
	// }
	// return seatList;
	// }
	//

}
