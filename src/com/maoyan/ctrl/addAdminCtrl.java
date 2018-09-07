package com.maoyan.ctrl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Admin;
import com.maoyan.service.AdminServiceImpl;

/**
 * Servlet implementation class addAdmin
 */
@WebServlet("/addAdminCtrl")
public class addAdminCtrl extends HttpServlet {

	boolean rs = false;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addAdminCtrl() {
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
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();
		rs = AdminServiceImpl.getAdminServiceImpl().queryAdmin(name);
		if (rs) {
			out.print("true");
		} else {
			out.print("false");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Admin admin = new Admin();
		PrintWriter out = response.getWriter();
		// 查询管理员名是否存在
		// String name = request.getParameter("name");
		String adminName = request.getParameter("adminName");
		String adminPassword = request.getParameter("adminPassword");
		if (rs) {
			out.print("添加成功！");
			// 如果密码为空，说明管理员可以添加，返回true
			System.out.println("adminName=====" + adminName);
			System.out.println("adminPassword======" + adminPassword);
			admin.setAdminName(adminName);
			admin.setAdminPassword(adminPassword);
			// 管理员没注册，插入数据
			AdminServiceImpl.getAdminServiceImpl().addAdmin(admin);
		} else {
			// 否则返回false，添加失败
			out.print("添加失败！");
		}
		// request.getRequestDispatcher("/adminJSP/addAdmin.jsp").forward(request,
		// response);
	}
}
