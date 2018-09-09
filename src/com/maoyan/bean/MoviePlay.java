package com.maoyan.bean;

/**
 * 电影播放信息
 * @author 振
 *
 */
public class MoviePlay {
	//电影播放信息id
	private int playId;
	//电影id
	private int movieId;
	//播放时间
	private java.sql.Time playTime;
	//语言版本
	private String language;
	//放映厅
	private String hall;
	//价钱
	private int price;
	
	public int getPlayId() {
		return playId;
	}
	public void setPlayId(int playId) {
		this.playId = playId;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getHall() {
		return hall;
	}
	public void setHall(String hall) {
		this.hall = hall;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public java.sql.Time getPlayTime() {
		return playTime;
	}
	public void setPlayTime(java.sql.Time playTime) {
		this.playTime = playTime;
	}
	
}