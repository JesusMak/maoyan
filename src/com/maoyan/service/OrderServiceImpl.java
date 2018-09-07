package com.maoyan.service;

import java.util.List;

import com.maoyan.bean.Order;
import com.maoyan.dao.OrderDaoImpl;

public class OrderServiceImpl {
	private static OrderServiceImpl orderServiceImpl;

	private OrderServiceImpl() {

	}

	public static OrderServiceImpl getOrderServiceImpl() {
		if (orderServiceImpl == null) {
			orderServiceImpl = new OrderServiceImpl();
		}
		return orderServiceImpl;
	}

	// 查询所有订单的方法
	public List<Order> queryOrder() {
		return OrderDaoImpl.getOrderDaoImpl().queryOrder();
	}

}
