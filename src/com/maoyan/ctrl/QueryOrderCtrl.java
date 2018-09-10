package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.Order;
import com.maoyan.service.OrderServiceImpl;

/**
 * Servlet implementation class showOrderCtrl
 */
@WebServlet("/QueryOrderCtrl")
public class QueryOrderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QueryOrderCtrl() {
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
		// 查询所有订单
		List<Order> orderList = OrderServiceImpl.getOrderServiceImpl().queryOrder();
		HttpSession session = request.getSession();
		session.setAttribute("ORDER_LIST", orderList);
		request.getRequestDispatcher("/admin.jsp").forward(request, response);
		for (Order o : orderList) {
			System.out.println(o.getOrderId());
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
