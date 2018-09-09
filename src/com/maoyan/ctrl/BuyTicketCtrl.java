package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.Seat;
import com.maoyan.service.CinemaService;

/**
 * Servlet implementation class BuyTicketCtrl
 */
@WebServlet("/BuyTicketCtrl")
public class BuyTicketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyTicketCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取主页传过来的电影id和播放id，和观看时间
		String movieId = request.getParameter("movieid");
		String playId = request.getParameter("playid");
		String wdate = request.getParameter("wdate");
		
		request.setAttribute("movieId", movieId);
		request.setAttribute("playId", playId);
		request.setAttribute("wdate", wdate);
		
		//获取电影院座位集合
		/*List<Seat> seatList = CinemaService.getCinemaService().showCinemaSeat();
		HttpSession session = request.getSession();
		session.setAttribute("seatList", seatList);*/
		
		request.getRequestDispatcher("/select_seat.jsp").forward(request, response);
	}

}
