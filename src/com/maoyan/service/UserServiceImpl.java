package com.maoyan.service;

import java.util.List;

import com.maoyan.bean.User;
import com.maoyan.dao.UserDaoImpl;

/**
 * 
 * @author Administrator
 *
 */
public class UserServiceImpl {
	private static UserServiceImpl userServiceImpl;

	private UserServiceImpl() {

	}

	public static UserServiceImpl getUserServiceImpl() {
		if (userServiceImpl == null) {
			userServiceImpl = new UserServiceImpl();
		}
		return userServiceImpl;

	}

	// 用户登录的方法
	public User login(String phone) {
		User user = UserDaoImpl.getUserDaoImpl().login(phone);
		return user;

	}

	// 用户注册功能
	public boolean register(User user) {

		return UserDaoImpl.getUserDaoImpl().register(user);
	}

	// 查询所有用户方法
	public List<User> queryUser() {
		return UserDaoImpl.getUserDaoImpl().queryUser();
	}

	public void deleteUser(String userPhone) {
		UserDaoImpl.getUserDaoImpl().deleteUser(userPhone);

	}
}
