package com.maoyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.maoyan.bean.Comment;
import com.maoyan.bean.Movie;
import com.maoyan.util.C3P0Util;
import com.maoyan.util.DBUtil;

public class MovieDaoImpl {
	private static MovieDaoImpl movieDaoImpl;
	private static Connection connMysql;
	public int rowCount;
	public int pageCount;

	Connection connection = C3P0Util.getConnection();

	private MovieDaoImpl() {

	}

	public static MovieDaoImpl getMovieDaoImpl() {
		if (movieDaoImpl == null) {
			movieDaoImpl = new MovieDaoImpl();
		}
		return movieDaoImpl;
	}

	// 沈荣楚
	// static {
	//
	// // 获取服务器中的全局对象Context
	// Context ctx;
	// try {
	// ctx = new InitialContext();
	// // 先获得固定格式对应的Context对象
	// Context context = (Context) ctx.lookup("java:comp/env/"); //
	// java:comp/env/是固定格式
	//
	// // 通过Context获得数据源DataSource
	// DataSource ds = (DataSource) context.lookup("jdbc/mysql");
	//
	// // 通过数据源获得连接
	// connMysql = ds.getConnection();
	//
	// System.out.print("数据库的版本信息为：" +
	// connMysql.getMetaData().getDatabaseProductVersion());
	//
	// } catch (NamingException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// } catch (SQLException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	//
	// }

	public List<Movie> queryMovieBoard(String boardNo, int pageSize, int pageNow) {
		List<Movie> movieList = new ArrayList<Movie>();
		Connection connMysql = DBUtil.getConnetion();
		PreparedStatement pstmt = null;
		System.out.println(boardNo);
		try {
			// pstmt = connMysql.prepareStatement("set @row_number:=0");

			if (boardNo.equals("grade")) {
				pstmt = connMysql.prepareStatement("select * from movie order by grade desc limit ?,?");
			} else if (boardNo.equals("monthWish")) {
				pstmt = connMysql.prepareStatement("select * from movie order by month_wish desc limit ?,?");

			} else if (boardNo.equals("records")) {
				pstmt = connMysql.prepareStatement("select * from movie order by records desc limit ?,?");

			}

			pstmt.setInt(1, (pageNow - 1) * pageSize);
			pstmt.setInt(2, pageSize);

			ResultSet rs = pstmt.executeQuery();
			int i = 1;
			while (rs.next()) {

				Movie movie = new Movie();
				movie.setMovieId(rs.getInt("movie_id"));
				movie.setMovieName(rs.getString("movie_name"));
				// movie.setPrice(rs.getDouble("price"));
				movie.setPost(rs.getString("post"));
				movie.setType(rs.getString("type"));
				movie.setArea(rs.getString("area"));
				movie.setGrade(rs.getDouble("grade"));
				movie.setTime(rs.getString("time"));
				movie.setOnShow(rs.getBoolean("on_show"));
				movie.setMovieLong(rs.getString("movie_long"));
				movie.setRecords(rs.getDouble("records"));
				movie.setLike(rs.getInt("movie_like"));
				movie.setComment(rs.getString("comment"));
				movie.setNumber(String.valueOf(i));
				movie.setActor(rs.getString("actor"));
				movie.setMonthWish(rs.getInt("month_wish"));
				movie.setTotalWish(rs.getInt("total_wish"));
				movie.setTotalRecords(rs.getString("total_records"));

				i++;
				movieList.add(movie);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movieList;
	}

	// 查询所有电影
	public List<Movie> queryMovie() {
		List<Movie> movieList = new ArrayList<Movie>();

		try {
			PreparedStatement prepareStatement = connection.prepareStatement("select * from movie");
			ResultSet rs = prepareStatement.executeQuery();
			while (rs.next()) {
				Movie movie = new Movie();
				movie.setMovieId(rs.getInt("movie_id"));
				movie.setMovieName(rs.getString("movie_name"));
				movie.setPrice(rs.getDouble("price"));
				movie.setPost(rs.getString("post"));
				movie.setType(rs.getString("type"));
				movie.setArea(rs.getString("area"));
				movie.setGrade(rs.getFloat("grade"));
				movie.setTime(rs.getString("time"));
				movie.setOnShow(rs.getBoolean("on_show"));
				movie.setMovieLong(rs.getString("movie_long"));
				movie.setRecords(rs.getInt("records"));
				movie.setLike(rs.getInt("movie_like"));
				movie.setComment(rs.getString("comment"));
				movieList.add(movie);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movieList;
	}

	// 搜索框搜索方法
	public List<Movie> query() {
		List<Movie> movieList = new ArrayList<Movie>();
		Connection conn = DBUtil.getConnetion();
		String sql = "select movie_name from movie;";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Movie movie = new Movie();
				movie.setMovieName(rs.getString("movie_name"));
				movieList.add(movie);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movieList;
	}

	public void addComments(Comment c) throws SQLException {
		Connection conn = DBUtil.getConnetion();
		PreparedStatement ptmt = conn.prepareStatement("insert into comment values(?,?,?,?,0)");

		String time = String.valueOf(Calendar.getInstance());
		ptmt.setString(1, c.getUserName());
		ptmt.setString(2, c.getGrade());
		ptmt.setString(3, c.getCommentTime());
		ptmt.setString(4, c.getContent());
		// ptmt.setInt(5, 0);
		ptmt.execute();
	}

	// dao�㣺��ѯ���е�����
	public List<Comment> queryComments() {
		Connection conn = DBUtil.getConnetion();
		List<Comment> movieList = new ArrayList<Comment>();
		try {
			PreparedStatement pstmt = conn.prepareStatement("select * from comment");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Comment ct = new Comment();

				ct.setUserName(rs.getString("user_name"));
				ct.setGrade(rs.getString("grade"));
				// ct.setRemark(rs.getString("remark"));
				ct.setCommentTime(rs.getString("comment_time"));
				ct.setContent(rs.getString("content"));
				ct.setApprove(rs.getInt("approve"));

				movieList.add(ct);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movieList;
	}

	public List<Movie> queryMoives() {
		Connection conn = DBUtil.getConnetion();
		List<Movie> movieList = new ArrayList<Movie>();
		try {
			PreparedStatement pstm = conn.prepareStatement("select * from movie");
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Movie mv = new Movie();
				mv.setMovieId(rs.getInt("movie_id"));
				mv.setMovieName(rs.getString("movie_name"));
				mv.setPost(rs.getString("post"));
				mv.setPostId(rs.getInt("post_id"));
				mv.setType(rs.getString("type"));
				mv.setActor(rs.getString("actor"));
				mv.setGrade(rs.getDouble("grade"));
				mv.setTime(rs.getString("time"));
				mv.setOnShow(rs.getBoolean("on_show"));
				mv.setMovieLong(rs.getString("movie_long"));
				mv.setRecords(rs.getDouble("records"));
				mv.setLike(rs.getInt("movie_like"));
				mv.setComment(rs.getString("comment"));
				movieList.add(mv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movieList;
	}

	/**
	 * 
	 * @param pageSize:ÿҳ��ʾ�����м�¼
	 * @param pageNow:��ǰҳ��
	 * @param rowCount:�ܵ��м�¼
	 * @param pageCount:�ж���ҳ
	 * @return
	 */
	public List<Movie> queryMoiveByPage(int pageSize, int pageNow) {
		Connection conn = DBUtil.getConnetion();
		List<Movie> movieList = new ArrayList<Movie>();
		try {
			PreparedStatement pstm = conn.prepareStatement("select count(movie_id) from movie");
			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {
				rowCount = rs.getInt(1);
			}
			// ����pageCount
			if (rowCount % pageSize == 0) {
				pageCount = rowCount / pageSize;
			} else {
				pageCount = rowCount / pageSize + 1;
			}
			// д��ҳ��ѯ�����
			pstm = conn.prepareStatement("select * from movie limit ?,?");
			pstm.setInt(1, pageSize * (pageNow - 1));
			pstm.setInt(2, pageSize);
			rs = pstm.executeQuery();
			Movie mv = null;
			while (rs.next()) {
				mv = new Movie();
				mv.setMovieId(rs.getInt("movie_id"));
				mv.setMovieName(rs.getString("movie_name"));
				mv.setPost(rs.getString("post"));
				mv.setPostId(rs.getInt("post_id"));
				mv.setType(rs.getString("type"));
				mv.setActor(rs.getString("actor"));
				mv.setGrade(rs.getDouble("grade"));
				mv.setTime(rs.getString("time"));
				mv.setOnShow(rs.getBoolean("on_show"));
				mv.setMovieLong(rs.getString("movie_long"));
				mv.setRecords(rs.getDouble("records"));
				mv.setLike(rs.getInt("movie_like"));
				mv.setComment(rs.getString("comment"));
				movieList.add(mv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movieList;
	}

	public void deleteMovie(String movieId) {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("delete from movie where movie_id=?");
			preparedStatement.setString(1, movieId);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// 添加电影
	public void addMovie(Movie movie) {
		String show;
		if (movie.isOnShow()) {
			show = "已上映";
		} else {
			show = "未上映";
		}

		try {
			PreparedStatement prepareStatement = connection
					.prepareStatement("insert into movie(movie_name,price,type,movie_long,on_show) values(?,?,?,?,?)");
			prepareStatement.setString(1, movie.getMovieName());
			prepareStatement.setFloat(2, (long) movie.getPrice());
			prepareStatement.setString(3, movie.getType());
			prepareStatement.setString(4, movie.getMovieLong());
			prepareStatement.setString(5, show);
			prepareStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
