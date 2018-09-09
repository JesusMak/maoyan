package com.maoyan.service;

import java.util.List;

import com.maoyan.bean.Movie;
import com.maoyan.bean.MoviePlay;
import com.maoyan.dao.MovieInfoDao;

public class MovieInfoService {
	
	private static MovieInfoService movieInfoService;
	
	public MovieInfoService() {
		
	}
	public static MovieInfoService getMovieInfoService() {
		if(movieInfoService == null) {
			movieInfoService = new MovieInfoService();
		}
		return movieInfoService;
	}
	
	/**
	 * 查询电影基本信息
	 * @return
	 * @throws Exception
	 */
	public List<Movie> showMovieInfo() {
		MovieInfoDao movieInfoDao = new MovieInfoDao();
		List<Movie> movie = movieInfoDao.showMovie();
		return movie;
	}
	
	/**
	 * 查询电影播放信息
	 * @return
	 */
	public List<MoviePlay> showMoviePlayInfo() {
		List<MoviePlay> moviePlay = new MovieInfoDao().showMoviePlayInfo();
		return moviePlay;
	}
	
	
	
	
}
