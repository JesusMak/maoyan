package com.maoyan.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.Order;
import com.maoyan.util.DBUtil;

public class MyOrderDao {
	private static MyOrderDao myOrderDao;
	
	public MyOrderDao() {
		
	}
	public static MyOrderDao getMyOrderDao() {
		if(myOrderDao == null) {
			myOrderDao = new MyOrderDao();
		}
		return myOrderDao;
	}
	
	private static Connection conn = DBUtil.getConnetion();
	Statement stmt;
	/**
	 * 获取订单信息
	 * @return
	 */
	public List<Order> lookMyOrder() {
		
		List<Order> order= new ArrayList<Order>();
		
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from m_order order by order_id desc");
			
			Order or = null;
			
			while (rs.next()) {
				or = new Order();
				or.setTime(rs.getDate("time"));
				or.setOrderId(rs.getString("order_id"));
				or.setMovieName(rs.getString("movie_name"));
				or.setCinemaName(rs.getString("cinema_name"));
				or.setHall(rs.getString("hall"));
				or.setSeat(rs.getString("seat"));
				or.setPlayTime(rs.getString("play_time"));
				or.setTotalPrice(rs.getInt("total_price"));
				or.setOrderStatus(rs.getString("order_status"));
				
				order.add(or);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return order;
	}
}
