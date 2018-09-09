package com.maoyan.ctrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.User;
import com.maoyan.service.UserServiceImpl;

/**
 * Servlet implementation class registerCtrl
 */
@WebServlet("/RegisterCtrl")
public class RegisterCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterCtrl() {
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
		// 获取页面密码和账号
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		// 打包对象
		User user = new User();
		user.setUserPhone(phone);
		user.setPassword(password);
		// 查询手机号是否已经注册
		if (phone.equals(UserServiceImpl.getUserServiceImpl().login(phone).getUserPhone())) {
			// 如果已经注册，则弹出账号已注册信息
			response.sendRedirect("reg_fail.jsp");
		} else {
			// 如果没注册，插入数据
			boolean success = UserServiceImpl.getUserServiceImpl().register(user);
			response.sendRedirect("index_log.jsp");
		}
	}

}
