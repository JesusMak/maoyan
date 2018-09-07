package com.maoyan.service;

import java.util.List;

import com.maoyan.bean.Movie;
import com.maoyan.dao.MovieDaoImpl;

public class MovieServiceImpl {
	private static MovieServiceImpl movieServiceImpl;

	private MovieServiceImpl() {

	}

	public static MovieServiceImpl getMovieServiceImpl() {
		if (movieServiceImpl == null) {
			movieServiceImpl = new MovieServiceImpl();
		}
		return movieServiceImpl;
	}

	// 主页查询电影的方法
	public List<Movie> queryMovie() {
		return MovieDaoImpl.getMovieDaoImpl().queryMovie();
	}

}
