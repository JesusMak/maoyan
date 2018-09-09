package com.maoyan.bean;

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
	// 海报id
	private int postId;
	// 类型
	private String type;
	// 区域
	private String area;
	// 评分
	private double grade;
	// 上映时间
	private String time;
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
	// 序号
	private String number;
	// 本月想看人数
	private int monthWish;
	// 总想看人数
	private int totalWish;
	// 总票房
	private String totalRecords;
	// 主演
	private String actor;
	// 电影id
	private int cinemaId;

	public int getCinemaId() {
		return cinemaId;
	}

	public void setCinemaId(int cinemaId) {
		this.cinemaId = cinemaId;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public int getMonthWish() {
		return monthWish;
	}

	public void setMonthWish(int monthWish) {
		this.monthWish = monthWish;
	}

	public int getTotalWish() {
		return totalWish;
	}

	public void setTotalWish(int totalWish) {
		this.totalWish = totalWish;
	}

	public String getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(String totalRecords) {
		this.totalRecords = totalRecords;
	}

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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
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
