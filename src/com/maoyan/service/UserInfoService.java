package com.maoyan.service;

import java.util.List;

import com.maoyan.bean.User;
import com.maoyan.dao.UserInfoDAOImpl;




public class UserInfoService {
	private static UserInfoService userInfoService;
	public static UserInfoService getUserInfoService() {
		if(userInfoService==null) {
			userInfoService = new UserInfoService();
		}
		return userInfoService;
	}
	public List<User> query(String user_phone){
		List<User> userList = UserInfoDAOImpl.getUserDaoImpl().query(user_phone);
		return userList;
		
	}
	public void updateuser(User user,String user_phone) {
		UserInfoDAOImpl.getUserDaoImpl().updateuser(user,user_phone);
	}
	public void deleteUser(String user_phone) {
		UserInfoDAOImpl.getUserDaoImpl().deleteUser(user_phone);
	}
	public void addUser(User user) {
		UserInfoDAOImpl.getUserDaoImpl().addUser(user);
	}
	public void updateuserPic(User user,String user_phone) {
		UserInfoDAOImpl.getUserDaoImpl().updateuserPic(user, user_phone);
	}

}
