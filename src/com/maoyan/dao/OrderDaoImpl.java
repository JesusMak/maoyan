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

	// 查询所有订单的方法
	public List<Order> queryOrder() {
		List<Order> orderList = new ArrayList<Order>();
		try {
			PreparedStatement prepareStatement = connection.prepareStatement("select * from m_order");
			ResultSet rs = prepareStatement.executeQuery();
			while (rs.next()) {
				Order order = new Order();
				order.setOrderId(rs.getInt(1));
				order.setMovieId(rs.getInt(2));
				order.setMovieId(rs.getInt(3));
				order.setTime(rs.getDate(4));
				order.setUserPhone(rs.getString(5));
				order.setField(rs.getString(6));
				order.setSeat(rs.getString(7));
				order.setNumber(rs.getInt(8));
				orderList.add(order);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return orderList;
	}

}
