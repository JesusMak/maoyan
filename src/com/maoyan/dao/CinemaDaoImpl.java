package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.maoyan.bean.Cinema;
import com.maoyan.util.C3P0Util;

public class CinemaDaoImpl {
	private static CinemaDaoImpl cinemaDaoImpl;
	Connection connection = C3P0Util.getConnection();

	private CinemaDaoImpl() {

	}

	public static CinemaDaoImpl getCinemaDaoImpl() {
		if (cinemaDaoImpl == null) {
			cinemaDaoImpl = new CinemaDaoImpl();
		}
		return cinemaDaoImpl;
	}

	// 添加电影的方法
	public void addCinema(Cinema cinema) {

		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into cinema values(?,?,?,?,?)");
			preparedStatement.setInt(1, 10);
			preparedStatement.setString(2, cinema.getCinemaName());
			preparedStatement.setString(3, cinema.getAddress());
			preparedStatement.setString(4, cinema.getHall());
			preparedStatement.setString(5, cinema.getArea());
			System.out.println(cinema.getAddress());
			int executeUpdate = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
