package com.maoyan.ctrl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Cinema;
import com.maoyan.service.CinemaServiceImpl;

/**
 * Servlet implementation class addCinemaCtrl
 */
@WebServlet("/AddCinemaCtrl")
public class AddCinemaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCinemaCtrl() {
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
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Cinema cinema = new Cinema();
		cinema.setCinemaName(request.getParameter("name"));
		cinema.setAddress(request.getParameter("address"));
		cinema.setCinemaServer(request.getParameter("phone"));
		cinema.setCinemaServer(request.getParameter("context"));
		cinema.setCinemaServer(request.getParameter("server"));
		// cinema.setHall(request.getParameter("hall"));
		cinema.setArea(request.getParameter("area"));
		System.out.println(cinema.getAddress());
		CinemaServiceImpl.getCinemaServiceImpl().addCinema(cinema);

	}

}
