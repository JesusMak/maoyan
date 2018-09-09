package com.maoyan.service;

import java.util.List;

import com.maoyan.bean.Order;
import com.maoyan.dao.MyOrderDao;

public class MyOrderService {
	private static MyOrderService myOrderService;
	
	public MyOrderService() {
		
	}
	public static MyOrderService getMyOrderService() {
		if(myOrderService == null) {
			myOrderService = new MyOrderService();
		}
		return myOrderService;
	}
	/**
	 * 获取订单信息
	 * @return
	 */
	public List<Order> lookMyOrder() {
		List<Order> orderList = new MyOrderDao().lookMyOrder();
		return orderList;
	}
}
