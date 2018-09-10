package com.maoyan.service;

import java.sql.SQLException;
import java.util.List;

import com.maoyan.bean.Comment;
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

	/*
	 * 沈荣楚： 查询电影信息
	 */
	public List<Movie> queryMovie(String boardNo, int pageSize, int pageNow) {
		List<Movie> movieList = MovieDaoImpl.getMovieDaoImpl().queryMovieBoard(boardNo, pageSize, pageNow);
		return movieList;
	}

	/**
	 * 冼世达
	 */
	public void addComment(Comment comment) throws SQLException {
		MovieDaoImpl.getMovieDaoImpl().addComments(comment);
	}

	public List<Comment> queryComments() {
		List<Comment> commentList = MovieDaoImpl.getMovieDaoImpl().queryComments();
		return commentList;
	}

	public List<Movie> queryMovies(int pageSize, int pageNow) {
		// ֱ�Ӳ�
		List<Movie> movieList = MovieDaoImpl.getMovieDaoImpl().queryMoiveByPage(pageSize, pageNow);
		return movieList;
	}

	public void deleteMovie(String movieId) {
		// TODO Auto-generated method stub
		MovieDaoImpl.getMovieDaoImpl().deleteMovie(movieId);
	}
	// 添加电影

	public void addMovie(Movie movie) {
		MovieDaoImpl.getMovieDaoImpl().addMovie(movie);
	}

}
