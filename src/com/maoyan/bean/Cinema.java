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
	// 电影院电话
	private String cinemaPhone;
	// 电影院服务
	private String cinemaServer;
	// 电影院服务内容
	private String cinemaServerContext;
	// 最低价格
	private float minPrice;

	public float getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(float minPrice) {
		this.minPrice = minPrice;
	}

	public String getCinemaPhone() {
		return cinemaPhone;
	}

	public void setCinemaPhone(String cinemaPhone) {
		this.cinemaPhone = cinemaPhone;
	}

	public String getCinemaServer() {
		return cinemaServer;
	}

	public void setCinemaServer(String cinemaServer) {
		this.cinemaServer = cinemaServer;
	}

	public String getCinemaServerContext() {
		return cinemaServerContext;
	}

	public void setCinemaServerContext(String cinemaServerContext) {
		this.cinemaServerContext = cinemaServerContext;
	}

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
