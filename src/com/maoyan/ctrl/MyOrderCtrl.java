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
import com.maoyan.service.MyOrderService;

/**
 * Servlet implementation class MyOrderCtrl
 */
@WebServlet("/MyOrderCtrl")
public class MyOrderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyOrderCtrl() {
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
		
		//获取订单信息集合
		List<Order> orderList = MyOrderService.getMyOrderService().lookMyOrder();
		
		HttpSession session = request.getSession();
		session.setAttribute("orderList", orderList);
		
		request.getRequestDispatcher("/myorder.jsp").forward(request, response);
		
	}

}
