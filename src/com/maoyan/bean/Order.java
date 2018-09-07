package com.maoyan.bean;

import java.util.Date;

/**
 * 订单表
 * 
 * @author Administrator
 *
 */
public class Order {
	// 订单id
	private int orderId;
	// 电影院id
	private int cinemaId;
	// 电影id
	private int movieId;
	// 上映时间
	private Date time;
	// 用户电话
	private String userPhone;
	// 领域
	private String field;
	// 座位
	private String seat;
	// 票数
	private int number;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getCinemaId() {
		return cinemaId;
	}

	public void setCinemaId(int cinemaId) {
		this.cinemaId = cinemaId;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

}
