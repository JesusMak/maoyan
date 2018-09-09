package com.maoyan.bean;
/**
 * 电影院座位信息
 * @author 振
 *
 */
public class Seat {
	//座位id
	private int seatId;
	//行
	private int seatRow;
	//列
	private int seatCol;
	//图片路径
	private String seatStatus;
	
	public int getSeatId() {
		return seatId;
	}
	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}
	public int getSeatRow() {
		return seatRow;
	}
	public void setSeatRow(int seatRow) {
		this.seatRow = seatRow;
	}
	public int getSeatCol() {
		return seatCol;
	}
	public void setSeatCol(int seatCol) {
		this.seatCol = seatCol;
	}
	public String getSeatStatus() {
		return seatStatus;
	}
	public void setSeatStatus(String seatStatus) {
		this.seatStatus = seatStatus;
	}
	
}
