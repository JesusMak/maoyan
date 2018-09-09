package com.maoyan.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Movie;
import com.maoyan.service.MovieServiceImpl;

/**
 * Servlet implementation class queryCtrl
 */
@WebServlet(name = "IndexCtrl", urlPatterns = { "/IndexCtrl" })
public class IndexCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IndexCtrl() {
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

		List<Movie> movieList = new ArrayList<Movie>();
		movieList = MovieServiceImpl.getMovieServiceImpl().queryMovie();

		ServletContext context = this.getServletContext();
		context.setAttribute("MOVIE_LIST", movieList);

		System.out.println(movieList.size());
		for (Movie m : movieList) {
			System.out.println(m.getMovieName());

		}
		response.sendRedirect("index_no_log.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);

	}

}
