package com.maoyan.bean;

import java.util.Date;

/**
 * �û���
 * 
 * @author Administrator
 *
 */
public class User {
	// 用户电话
	private String userPhone;
	// 用户密码
	private String password;
	// 用户昵称
	private String userName;
	// 性别
	private String sex;
	// 生日
	private Date birthday;
	// 工作
	private String job;
	// 爱好
	private String hobby;
	// 头像
	private String header;
	// 用户头像
	private byte[] head;
	// 余额
	private double balance;
	// 个性签名
	private String naming;
	// 用户婚姻状态
	private String status;

	public byte[] getHead() {
		return head;
	}

	public void setHead(byte[] head) {
		this.head = head;
	}

	public String getNaming() {
		return naming;
	}

	public void setNaming(String naming) {
		this.naming = naming;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getHeader() {
		return header;
	}

	public void setHeader(String header) {
		this.header = header;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

}
