package com.maoyan.ctrl;

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.Cinema;
import com.maoyan.bean.Movie;
import com.maoyan.bean.Order;
import com.maoyan.service.SubmitOrderService;

/**
 * Servlet implementation class SubmitOrderCtrl
 */
@WebServlet("/SubmitOrderCtrl")
public class SubmitOrderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitOrderCtrl() {
        super();
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
		String playTime = request.getParameter("playtime");
		String cinemaName = request.getParameter("cinemaname");	
		String hall = request.getParameter("hall");
		String seat = request.getParameter("seat");
		String totalPrices = request.getParameter("totalprice");
		int totalPrice = Integer.parseInt(totalPrices);
		
		//将订单信息保存到订单对象中去
		Order order = new Order();
		order.setMovieName(movieName);
		order.setPlayTime(playTime);
		order.setCinemaName(cinemaName);
		order.setHall(hall);
		order.setSeat(seat);
		order.setTotalPrice(totalPrice);
		//订单状态
		order.setOrderStatus("未付款");
		//电影院id
		Cinema cma = SubmitOrderService.getSubmitOrderService().getCinemaId(cinemaName);
		order.setCinemaId(cma.getCinemaId());
		//电影id
		Movie mv = SubmitOrderService.getSubmitOrderService().getMovieId(movieName);
		order.setMovieId(mv.getMovieId());
		//订单id
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String format = sdf.format(new Date());
//		int format = Integer.valueOf(formats).intValue();
		order.setOrderId(format);
		//下单时间
		java.util.Date dates = new java.util.Date();
		java.sql.Date date = new java.sql.Date(dates.getTime());
		order.setTime(date);
		
		//存进数据库
		SubmitOrderService.getSubmitOrderService().submitOrder(order);
		
		List<Order> orderList = new ArrayList<Order>();
		orderList.add(order);
		
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(10*60);
		session.setAttribute("orderList", orderList);
		request.getRequestDispatcher("/send_money.jsp").forward(request, response);
	}

}
