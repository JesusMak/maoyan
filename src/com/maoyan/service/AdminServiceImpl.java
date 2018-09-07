package com.maoyan.service;

import java.util.List;

import com.maoyan.bean.Admin;
import com.maoyan.dao.AdminDaoImpl;

public class AdminServiceImpl {
	private static AdminServiceImpl adminServiceImpl;

	private AdminServiceImpl() {

	}

	public static AdminServiceImpl getAdminServiceImpl() {
		if (adminServiceImpl == null) {
			adminServiceImpl = new AdminServiceImpl();
		}
		return adminServiceImpl;
	}

	// 查询所有管理员
	public List<Admin> queryAdmin() {
		List<Admin> adminList = AdminDaoImpl.getAmindDaoImpl().queryAdmin();
		return adminList;
	}

	// 判断管理员是否存在
	public boolean queryAdmin(String name) {
		return AdminDaoImpl.getAmindDaoImpl().queryAdmin(name);
	}

	// 删除管理员
	public int deleteAdmin(String adminName) {
		return AdminDaoImpl.getAmindDaoImpl().deleteAdmin(adminName);
	}

	// 添加管理员
	public void addAdmin(Admin admin) {
		AdminDaoImpl.getAmindDaoImpl().addAdmin(admin);
	}

}
