package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Cinema;
import com.maoyan.service.CinemaServiceImpl;

/**
 * Servlet implementation class QueryCinemaAdminCtrl
 */
@WebServlet("/QueryCinemaAdminCtrl")
public class QueryCinemaAdminCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QueryCinemaAdminCtrl() {
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
		List<Cinema> cinemaList = CinemaServiceImpl.getCinemaServiceImpl().queryCinema();
		request.setAttribute("CINEMA_LIST", cinemaList);
		request.getRequestDispatcher("/showCinema.jsp").forward(request, response);
		for (Cinema c : cinemaList) {
			System.out.println("电影" + c.getAddress());
		}
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
