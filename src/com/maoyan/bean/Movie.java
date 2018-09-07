package com.maoyan.bean;

import java.util.Date;

/**
 * 电影实体类
 * 
 * @author Administrator
 *
 */
public class Movie {
	// 电影id
	private int movieId;
	// 电影名字
	private String movieName;
	// 价格
	private double price;
	// 海报
	private String post;
	// 类型
	private String type;
	// 区域
	private String area;
	// 评分
	private double grade;
	// 上映时间
	private Date time;
	// 是否上映
	private boolean onShow;
	// 电影时长
	private String movieLong;
	// 票房
	private double records;
	// 点赞
	private int like;
	// 评论
	private String comment;

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public double getGrade() {
		return grade;
	}

	public void setGrade(double grade) {
		this.grade = grade;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public boolean isOnShow() {
		return onShow;
	}

	public void setOnShow(boolean onShow) {
		this.onShow = onShow;
	}

	public String getMovieLong() {
		return movieLong;
	}

	public void setMovieLong(String movieLong) {
		this.movieLong = movieLong;
	}

	public double getRecords() {
		return records;
	}

	public void setRecords(double records) {
		this.records = records;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}
