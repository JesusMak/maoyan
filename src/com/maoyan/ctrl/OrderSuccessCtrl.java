package com.maoyan.ctrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Order;
import com.maoyan.service.OrderSuccessService;

/**
 * Servlet implementation class OrderSuccessCtrl
 */
@WebServlet("/OrderSuccessCtrl")
public class OrderSuccessCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderSuccessCtrl() {
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

		String orderId = request.getParameter("orderid");
		Order order = new Order();
		order.setOrderStatus("已完成");
		String orderStatus = order.getOrderStatus();
		// 修改订单状态
		OrderSuccessService.getOrderSuccessService().orderSuccess(orderStatus, orderId);
		// 跳转到订单页面
		request.getRequestDispatcher("/MyOrderCtrl").forward(request, response);
	}

}
