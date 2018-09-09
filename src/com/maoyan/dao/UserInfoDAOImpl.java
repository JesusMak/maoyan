package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.User;
import com.maoyan.util.DBUtil;

public class UserInfoDAOImpl {
	private static UserInfoDAOImpl userInfoDao;

	public static UserInfoDAOImpl getUserDaoImpl() {
		if (userInfoDao == null) {
			userInfoDao = new UserInfoDAOImpl();
		}
		return userInfoDao;
	}

	public List<User> query(String user_phone) {
		List<User> userList = new ArrayList<User>();
		Connection conn = DBUtil.getConnetion();
		String sql = "select * from user where user_phone=?;";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_phone);
			ResultSet rs = pstmt.executeQuery();

			User user = null;
			while (rs.next()) {
				user = new User();
				user.setUserPhone(rs.getString("user_phone"));
				user.setUserName(rs.getString("user_name"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setYear(rs.getString("year"));
				user.setMonth(rs.getString("month"));
				user.setDay(rs.getString("day"));
				user.setJob(rs.getString("job"));
				user.setHobby(rs.getString("hobby"));
				user.setHead(rs.getString("head"));
				user.setBalance(rs.getFloat("balance"));
				userList.add(user);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return userList;

	}

	public List<User> queryUserById(String user_phone) {
		List<User> userList = new ArrayList<User>();
		Connection conn = DBUtil.getConnetion();
		String sql = "select user_name,sex,year,month,day,status,job,hobby from user where user_phone=?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_phone);
			ResultSet rs = pstmt.executeQuery();
			User user = new User();
			user.setUserName(rs.getString("user_name"));
			user.setSex(rs.getString("sex"));
			user.setYear(rs.getString("year"));
			user.setMonth(rs.getString("month"));
			user.setDay(rs.getString("day"));
			user.setStatus(rs.getString("status"));
			user.setJob(rs.getString("job"));
			user.setHobby(rs.getString("hobby"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userList;

	}

	public void updateuser(User user, String user_phone) {
		Connection conn = DBUtil.getConnetion();
		String sql = "update user set user_name=?" + ",sex=?,birthday=?,status=?,job=?,hobby=?where user_phone=?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getSex());
			pstmt.setString(3, user.getYear());
			pstmt.setString(4, user.getMonth());
			pstmt.setString(5, user.getDay());
			pstmt.setString(4, user.getStatus());
			pstmt.setString(5, user.getJob());
			pstmt.setString(6, user.getHobby());
			pstmt.setString(7, user_phone);
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void deleteUser(String user_phone) {
		Connection conn = DBUtil.getConnetion();
		String sql = "delete from user where user_phone=?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_phone);
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void addUser(User user) {
		Connection conn = DBUtil.getConnetion();
		String sql = "insert into user (user_phone,user_name,password" + ",sex,birthday,job,hobby,head,balance)"
				+ "values(?,?,?,?,?,?,?,?,?) ";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserPhone());
			pstmt.setString(2, user.getUserName());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getSex());
			pstmt.setString(5, user.getYear());
			pstmt.setString(6, user.getMonth());
			pstmt.setString(7, user.getDay());
			pstmt.setString(6, user.getJob());
			pstmt.setString(7, user.getHobby());
			pstmt.setString(10, user.getHead());
			pstmt.setFloat(9, (float) user.getBalance());

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void updateuserPic(User user, String user_phone) {
		Connection conn = DBUtil.getConnetion();
		String sql = "update user set head=? where user_phone=?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getHead());
			pstmt.setString(2, user_phone);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
