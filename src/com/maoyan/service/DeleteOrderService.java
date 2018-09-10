package com.maoyan.service;

import com.maoyan.dao.DeleteOrderDao;

public class DeleteOrderService {
	private static DeleteOrderService deleteOrderService;

	public DeleteOrderService() {

	}

	public static DeleteOrderService getDeleteOrderService() {
		if (deleteOrderService == null) {
			deleteOrderService = new DeleteOrderService();
		}
		return deleteOrderService;
	}

	/**
	 * 删除订单
	 * 
	 * @param orderId
	 */
	public void deleteOrder(String orderId) {
		DeleteOrderDao.getDeleteOrderDao().deleteOrder(orderId);
	}

	//
	// 删除电影
	public void deleteMovie(String movieId) {
		// TODO Auto-generated method stub

	}
}
