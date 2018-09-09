package com.maoyan.dao;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.maoyan.bean.Movie;
import com.maoyan.bean.MoviePlay;
import com.maoyan.util.DBUtil;

public class MovieInfoDao {
	
	private static MovieInfoDao movieInfoDao;
	
	public MovieInfoDao() {
		
	}
	public static MovieInfoDao getMovieInfoDao() {
		if(movieInfoDao == null) {
			movieInfoDao = new MovieInfoDao();
		}
		return movieInfoDao;
	}
	
	private static Connection conn = DBUtil.getConnetion();
	//3.通过数据库的连接操作数据库，实现增删改查
	Statement stmt;
	
	/**
	 * 查询电影基本信息
	 * @return
	 */
	public List<Movie> showMovie() {
		
		List<Movie> movie = new ArrayList<Movie>();
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from movie");

			Movie mv = null;
			
			while(rs.next()) {
				mv = new Movie();
				mv.setMovieId(rs.getInt("movie_id"));
				mv.setMovieName(rs.getString("movie_name"));
				mv.setPost(rs.getString("post"));
				mv.setPostId(rs.getInt("post_id"));
				mv.setCinemaId(rs.getInt("cinema_id"));
				mv.setActor(rs.getString("actor"));
				mv.setType(rs.getString("type"));
				mv.setGrade(rs.getDouble("grade"));
				mv.setMovieLong(rs.getString("movie_long"));
				
				movie.add(mv);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return movie;
	}
	
	public List<MoviePlay> showMoviePlayInfo() {
		
		List<MoviePlay> moviePlay = new ArrayList<MoviePlay>();
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from movie_play");
			
			MoviePlay mp = null;
			
			while(rs.next()) {
				mp = new MoviePlay();
				mp.setPlayId(rs.getInt("play_id"));
				mp.setMovieId(rs.getInt("movie_id"));
				mp.setPlayTime(rs.getTime("play_time"));
				mp.setLanguage(rs.getString("language"));
				mp.setHall(rs.getString("hall"));
				mp.setPrice(rs.getInt("price"));
				
				moviePlay.add(mp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return moviePlay;
	}
	
	
}
