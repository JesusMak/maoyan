package com.maoyan.service;

import com.maoyan.dao.OrderSuccessDao;

public class OrderSuccessService {
	private static OrderSuccessService orderSuccessService;
	
	public OrderSuccessService() {
		
	}
	public static OrderSuccessService getOrderSuccessService() {
		if(orderSuccessService == null) {
			orderSuccessService = new OrderSuccessService();
		}
		return orderSuccessService;
	}
	/**
	 * 修改订单状态
	 * @param orderStatus
	 * @param orderId
	 */
	public void orderSuccess(String orderStatus,String orderId) {
		OrderSuccessDao.getOrderSuccessDao().orderSuccess(orderStatus, orderId);
	}
	
}
