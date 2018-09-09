package com.maoyan.service;

import com.maoyan.bean.Cinema;
import com.maoyan.bean.Movie;
import com.maoyan.bean.Order;
import com.maoyan.dao.SubmitOrderDao;

public class SubmitOrderService {
	
	private static SubmitOrderService submitOrderService;
	
	public SubmitOrderService() {
		
	}
	
	public static SubmitOrderService getSubmitOrderService() {
		if(submitOrderService == null) {
			submitOrderService = new SubmitOrderService();
		}
		return submitOrderService;
	}
	
	/**
	 * 获取电影院id
	 * @param cinemaName
	 * @return
	 */
	public Cinema getCinemaId(String cinemaName) {
		Cinema cma= SubmitOrderDao.getSubmitOrderDao().getCinemaId(cinemaName);
		return cma;
		
	}
	/**
	 * 获取电影id
	 * @param movieName
	 * @return
	 */
	public Movie getMovieId(String movieName) {
		Movie mv= SubmitOrderDao.getSubmitOrderDao().getMovieId(movieName);
		return mv;
	}
	
	/**
	 * 提交表单
	 * @param od
	 */
	public void submitOrder(Order od) {
		SubmitOrderDao.getSubmitOrderDao().submitOrder(od);
	}
}
