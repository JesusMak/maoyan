package com.maoyan.ctrl;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	private static final String URL = "jdbc:mysql://localhost:3306/maoyan";
	private static final String USER = "root";
	private static final String PASSWORD = "root";
	private static Connection conn=null;
	
	static {
		try {
			//1.加载驱动程序
			Class.forName("com.mysql.jdbc.Driver");
			//2.获得数据库连接
			conn =  DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getConnetion() {
		return conn;
	}
	
}
