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
				order.setOrderId(rs.getString(1));
				order.setMovieId(rs.getInt(2));
				order.setMovieId(rs.getInt(3));
				order.setMovieName(rs.getString(4));
				order.setOrderStatus(rs.getString(5));
				order.setPlayTime(rs.getString(6));
				order.setTime(rs.getDate(7));
				order.setUserPhone(rs.getString(8));
				order.setHall(rs.getString(9));
				order.setTotalPrice(rs.getInt(10));
				order.setCinemaName(rs.getString(11));
				order.setSeat(rs.getString(12));
				order.setNumber(rs.getInt(13));
				orderList.add(order);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return orderList;
	}

}
