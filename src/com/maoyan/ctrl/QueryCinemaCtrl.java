package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Cinema;
import com.maoyan.dao.CinemaDaoImpl;
import com.maoyan.service.CinemaServiceImpl;

/**
 * Servlet implementation class QueryCinemaCtrl
 */
@WebServlet("/QueryCinemaCtrl")
public class QueryCinemaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QueryCinemaCtrl() {
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
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pageSize = 10;
		int pageNow = 1;
		String tagName = "000";
		if (request.getParameter("tagName") != null) {
			tagName = request.getParameter("tagName");
		}
		String curPageNow = request.getParameter("curPageNow");
		if (curPageNow != null) {
			pageNow = Integer.parseInt(curPageNow);
		}

		List<Cinema> cinemaList = CinemaServiceImpl.getCinemaServiceImpl().queryCinema(pageSize, pageNow, tagName);

		request.setAttribute("CINEMA_LIST", cinemaList);
		request.setAttribute("PAGE_NOW", pageNow);
		request.setAttribute("PAGE_COUNT", CinemaDaoImpl.getCinemaDaoImpl().pageCount);
		request.setAttribute("TAGNAME", tagName);

		request.getRequestDispatcher("page/cinemas.jsp").forward(request, response);
	}

}
