package com.maoyan.bean;

/**
 * 管理员实体类
 *
 * @author Administrator
 *
 */

public class Admin {
	// 管理员账号
	private String adminName;
	// 管理员密码
	private String adminPassword;

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

}
