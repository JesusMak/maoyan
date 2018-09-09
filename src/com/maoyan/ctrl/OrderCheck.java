package com.maoyan.ctrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Order;

/**
 * Servlet implementation class OrderCheck
 */
@WebServlet("/OrderCheck")
public class OrderCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCheck() {
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
		
		String movieName = request.getParameter("moviename");
		String totalPrices = request.getParameter("totalprice");
		int totalPrice = Integer.parseInt(totalPrices);
		String playTime = request.getParameter("playtime");
		String hall = request.getParameter("hall");
		String ticket = request.getParameter("ticket");
		String cinemaName = request.getParameter("cinemaname");
		
		//订单对象
		Order order = new Order();
		order.setMovieName(movieName);
		order.setTotalPrice(totalPrice);
		order.setPlayTime(playTime);
		order.setHall(hall);
		order.setSeat(ticket);
		order.setCinemaName(cinemaName);
			
		request.setAttribute("order", order);
		
		request.getRequestDispatcher("/payment.jsp").forward(request, response);
		
		
		
	}

}
