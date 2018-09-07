package com.maoyan.ctrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.User;
import com.maoyan.service.UserServiceImpl;

/**
 * Servlet implementation class loginCtrl
 */
@WebServlet("/loginCtrl")
public class loginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginCtrl() {
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

		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		System.out.println(phone + "===" + password);
		User user = UserServiceImpl.getUserServiceImpl().login(phone);

		// 如果选择了选择框，把登陆成功的信息存入Cookie
		if (request.getParameterValues("cookie") != null) {
			Cookie phoneCookie = new Cookie("PHONE", phone);
			Cookie passwordCookie = new Cookie("PASSWORD", password);
			phoneCookie.setMaxAge(7 * 24 * 3600);
			passwordCookie.setMaxAge(7 * 24 * 3600);
			response.addCookie(phoneCookie);
			response.addCookie(passwordCookie);
		}

		if (phone.equals(user.getUserPhone()) && password.equals(user.getPassword())) {

			// 创建session对象
			HttpSession session = request.getSession();
			// 把用户数据保存在session域对象中
			session.setAttribute("PHONE", phone);
			// session.setAttribute("PASSWORD", password);

			// 重定向需要加路径这个：request.getContextPath()
			// request.getRequestDispatcher("/userJSP/Page/index_log.jsp").forward(request,
			// response);
			response.sendRedirect(request.getContextPath() + "/userJSP/Page/index_log.jsp");
		}
	}
}
