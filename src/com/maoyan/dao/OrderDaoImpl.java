package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.Order;
import com.maoyan.util.C3P0Util;

public class OrderDaoImpl {
	private static OrderDaoImpl orderDaoImpl;
	Connection connection = C3P0Util.getConnection();

	private OrderDaoImpl() {

	}

	public static OrderDaoImpl getOrderDaoImpl() {
		if (orderDaoImpl == null) {
			orderDaoImpl = new OrderDaoImpl();
		}
		return orderDaoImpl;
	}

	// 后台查询所有订单的方法
	public List<Order> queryOrder() {
		List<Order> orderList = new ArrayList<Order>();
		try {
			PreparedStatement prepareStatement = connection.prepareStatement("select * from m_order");
			ResultSet rs = prepareStatement.executeQuery();
			while (rs.next()) {
				Order order = new Order();
				order.setOrderId(rs.getString("order_id"));
				order.setMovieId(rs.getInt("cinema_id"));
				order.setMovieId(rs.getInt("movie_id"));
				order.setMovieName(rs.getString("movie_name"));
				order.setOrderStatus(rs.getString("order_status"));
				order.setPlayTime(rs.getString("play_time"));
				order.setTime(rs.getDate("time"));
				order.setUserPhone(rs.getString("user_phone"));
				order.setHall(rs.getString("hall"));
				order.setTotalPrice(rs.getInt("total_price"));
				order.setCinemaName(rs.getString("cinema_name"));
				order.setSeat(rs.getString("seat"));
				order.setNumber(rs.getInt("number"));
				orderList.add(order);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderList;
	}

}
