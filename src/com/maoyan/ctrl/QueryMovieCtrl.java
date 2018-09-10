package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.Movie;
import com.maoyan.service.MovieServiceImpl;

/**
 * Servlet implementation class queryMovieCtrl
 */
@WebServlet("/QueryMovieCtrl")
public class QueryMovieCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QueryMovieCtrl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 查询所有电影
		List<Movie> movieList = MovieServiceImpl.getMovieServiceImpl().queryMovie();
		HttpSession session = request.getSession();
		session.setAttribute("MOVIE_LIST", movieList);
		// request.setAttribute("MOVIE_LIST", movieList);
		request.getRequestDispatcher("/showMovie.jsp").forward(request, response);
		// for (Movie m : movieList) {
		// System.out.println("电影" + m.getMovieId());
		// }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
