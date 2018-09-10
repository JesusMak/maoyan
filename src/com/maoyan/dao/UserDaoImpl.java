package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.User;
import com.maoyan.util.C3P0Util;

/**
 * 
 * @author Administrator
 *
 */
public class UserDaoImpl {
	private static UserDaoImpl userDaoImpl;
	Connection connection = C3P0Util.getConnection();

	private UserDaoImpl() {

	}

	public static UserDaoImpl getUserDaoImpl() {
		if (userDaoImpl == null) {
			userDaoImpl = new UserDaoImpl();
		}
		return userDaoImpl;
	}

	// 用户登录的方法
	public User login(String phone) {

		User user = new User();
		try {
			PreparedStatement prepareStatement = connection.prepareStatement("select * from user where user_phone = ?");
			prepareStatement.setString(1, phone);
			ResultSet rs = prepareStatement.executeQuery();
			if (rs.next()) {
				user.setUserPhone(rs.getString(1));
				user.setPassword(rs.getString(2));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return user;
	}

	public boolean register(User user) {
		boolean success = false;
		try {
			String sql = "insert into user(user_phone,password) values(?,?)";
			PreparedStatement prepareStatement = connection.prepareStatement(sql);
			prepareStatement.setString(1, user.getUserPhone());
			prepareStatement.setString(2, user.getPassword());
			System.out.println(user.getPassword() + "___" + user.getUserPhone());
			// 执行成功的记录条数num
			int rs = prepareStatement.executeUpdate();
			if (rs > 0) {
				success = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return success;
	}

	public List<User> queryUser() {
		List<User> userList = new ArrayList<User>();
		try {
			PreparedStatement prepareStatement = connection.prepareStatement("select * from user");
			ResultSet rs = prepareStatement.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setUserPhone(rs.getString("user_phone"));
				user.setPassword(rs.getString("password"));
				user.setUserName(rs.getString("user_name"));
				user.setSex(rs.getString("sex"));
				user.setStatus(rs.getString("status"));
				user.setYear(rs.getString("year"));
				user.setMonth(rs.getString("month"));
				user.setDay(rs.getString("day"));
				user.setJob(rs.getString("job"));
				user.setHobby(rs.getString("hobby"));
				user.setHeader(rs.getString("head"));
				user.setBalance(rs.getDouble("balance"));
				userList.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return userList;
	}

	public void deleteUser(String userPhone) {

		try {
			PreparedStatement prepareStatement = connection.prepareStatement("delete from user where user_phone=?");
			prepareStatement.setString(1, userPhone);
			prepareStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
