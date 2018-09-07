package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.Admin;
import com.maoyan.util.C3P0Util;

public class AdminDaoImpl {
	private static AdminDaoImpl adminDaoImpl;
	Connection connection = C3P0Util.getConnection();

	private AdminDaoImpl() {

	}

	public static AdminDaoImpl getAmindDaoImpl() {
		if (adminDaoImpl == null) {
			adminDaoImpl = new AdminDaoImpl();
		}
		return adminDaoImpl;
	}

	// 查询所有管理员
	public List<Admin> queryAdmin() {
		List<Admin> adminList = new ArrayList<>();
		try {
			PreparedStatement prepareStatement = connection.prepareStatement("select * from admin");
			ResultSet rs = prepareStatement.executeQuery();

			while (rs.next()) {
				Admin admin = new Admin();
				admin.setAdminName(rs.getString(1));
				admin.setAdminPassword(rs.getString(2));
				adminList.add(admin);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return adminList;
	}

	// 删除管理员
	public int deleteAdmin(String adminName) {
		int rs = 0;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("delete from admin where name=?");
			preparedStatement.setString(1, adminName);
			rs = preparedStatement.executeUpdate();
			// System.out.println(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	// 查询管理员是否存在

	public boolean queryAdmin(String name) {
		Admin admin = null;
		boolean result = false;
		try {
			PreparedStatement prepareStatement = connection.prepareStatement("select * from admin where name=?");
			prepareStatement.setString(1, name);
			ResultSet rs = prepareStatement.executeQuery();
			if (rs.next()) {
				admin = new Admin();
				admin.setAdminName(rs.getString(1));
				admin.setAdminPassword(rs.getString(2));
			}
			if (admin == null) {
				// 如果密码为空，可以注册，返回true
				result = true;
			} else {
				result = false;
			}
		} catch (

		SQLException e) {
			// TODOAuto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	// 添加管理员
	public void addAdmin(Admin admin) {
		boolean result = false;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into admin values(?,?)");
			preparedStatement.setString(1, admin.getAdminName());
			preparedStatement.setString(2, admin.getAdminPassword());
			int rs = preparedStatement.executeUpdate();
			if (rs != 0) {
				result = true;
			} else {
				result = false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
