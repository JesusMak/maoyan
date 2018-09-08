package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.Movie;
import com.maoyan.util.C3P0Util;

public class MovieDaoImpl {
	private static MovieDaoImpl movieDaoImpl;
	Connection connection = C3P0Util.getConnection();

	private MovieDaoImpl() {

	}

	public static MovieDaoImpl getMovieDaoImpl() {
		if (movieDaoImpl == null) {
			movieDaoImpl = new MovieDaoImpl();
		}
		return movieDaoImpl;
	}

	// 查询所有电影
	public List<Movie> queryMovie() {
		List<Movie> movieList = new ArrayList<Movie>();

		try {
			PreparedStatement prepareStatement = connection.prepareStatement("select * from movie");
			ResultSet rs = prepareStatement.executeQuery();
			while (rs.next()) {
				Movie movie = new Movie();
				movie.setMovieId(rs.getInt(1));
				movie.setMovieName(rs.getString(2));
				movie.setPrice(rs.getDouble(3));
				movie.setPost(rs.getString(4));
				movie.setType(rs.getString(5));
				movie.setArea(rs.getString(6));
				movie.setGrade(rs.getFloat(7));
				movie.setTime(rs.getDate(8));
				movie.setOnShow(rs.getBoolean(9));
				movie.setMovieLong(rs.getString(10));
				movie.setRecords(rs.getInt(11));
				movie.setLike(rs.getInt(12));
				movie.setComment(rs.getString(13));
				movieList.add(movie);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movieList;
	}
}
