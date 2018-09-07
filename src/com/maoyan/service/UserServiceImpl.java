package com.maoyan.service;

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

	public boolean register(User user) {

		return UserDaoImpl.getUserDaoImpl().register(user);
	}
}
