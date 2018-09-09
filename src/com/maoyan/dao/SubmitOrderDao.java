package com.maoyan.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.maoyan.bean.Cinema;
import com.maoyan.bean.Movie;
import com.maoyan.bean.Order;
import com.maoyan.util.DBUtil;

public class SubmitOrderDao {
	
private static SubmitOrderDao submitOrderDao;
	
	public SubmitOrderDao() {
		
	}
	public static SubmitOrderDao getSubmitOrderDao() {
		if(submitOrderDao == null) {
			submitOrderDao = new SubmitOrderDao();
		}
		return submitOrderDao;
	}
	
	/**
	 * 提交订单
	 */
	public static Connection conn = DBUtil.getConnetion();
	
	public void submitOrder(Order od) {
		try {
			String sql = " "+
						 "insert into m_order(order_id,cinema_id,movie_id,movie_name,order_status,play_time,time,hall,total_price,cinema_name,seat)"+
						 "values(?,?,?,?,?,?,?,?,?,?,?)";
						 
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, od.getOrderId());
			pstmt.setInt(2, od.getCinemaId());
			pstmt.setInt(3, od.getMovieId());
			pstmt.setString(4, od.getMovieName());
			pstmt.setString(5, od.getOrderStatus());
			pstmt.setString(6, od.getPlayTime());
			pstmt.setDate(7, (Date) od.getTime());
			pstmt.setString(8, od.getHall());
			pstmt.setInt(9, od.getTotalPrice());
			pstmt.setString(10, od.getCinemaName());
			pstmt.setString(11, od.getSeat());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 获取电影院id
	 * @param cinemaName
	 * @return
	 */
	public Cinema getCinemaId(String cinemaName) {
		Cinema cma = null;
		try {
			PreparedStatement pstmt = conn.prepareStatement("select cinema_id from cinema where cinema_name=?");
			pstmt.setString(1, cinemaName);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				cma = new Cinema();
				cma.setCinemaId(rs.getInt("cinema_id"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cma;
	}
	
	/**
	 * 获取电影id
	 * @param movieName
	 * @return
	 */
	public Movie getMovieId(String movieName) {
		Movie mv = null;
		String sql = " " + 
					"select movie_id from movie " +
					"where movie_name=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movieName);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mv = new Movie();
				mv.setMovieId(rs.getInt("movie_id"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mv;
	}
}
