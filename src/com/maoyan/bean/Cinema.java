package com.maoyan.bean;

/**
 * 电影院实体类
 * 
 * @author Administrator
 *
 */

public class Cinema {
	// 电影院id
	private int cinemaId;
	// 电影院名字
	private String cinemaName;
	// 电影院地址
	private String address;
	// 影厅
	private String hall;
	// 区域
	private String area;

	public int getCinemaId() {
		return cinemaId;
	}

	public void setCinemaId(int cinemaId) {
		this.cinemaId = cinemaId;
	}

	public String getCinemaName() {
		return cinemaName;
	}

	public void setCinemaName(String cinemaName) {
		this.cinemaName = cinemaName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHall() {
		return hall;
	}

	public void setHall(String hall) {
		this.hall = hall;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

}
