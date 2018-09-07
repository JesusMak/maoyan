package com.maoyan.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class loginFilter
 */
@WebFilter(filterName = "/loginFilter", urlPatterns = "/userJSP/Page/index_log.jsp")
public class loginFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public loginFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 判断是否登陆
		// 获得在下面代码中要用的request,response,session对象
		HttpServletRequest servletRequest = (HttpServletRequest) request;
		HttpServletResponse servletResponse = (HttpServletResponse) response;
		HttpSession session = servletRequest.getSession();

		// 获得用户请求的URI
		String path = servletRequest.getRequestURI();
		// System.out.println(path);
		// 从session里取用户手机信息
		String phone = (String) session.getAttribute("PHONE");

		// 登陆页面无需过滤
		if (path.indexOf("index_no_log.jsp") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}

		// 判断如果没有取到员工信息,就跳转到登陆页面
		if (phone == null || "".equals(phone)) {
			// 跳转到登陆页面
			servletResponse.sendRedirect(servletRequest.getContextPath() + "/userJSP/Page/index_no_log.jsp");
			// servletResponse.sendRedirect("/JSP/Page/index_no_log.jsp");
			System.out.println("___判断是否登陆！____");
		} else {
			// 已经登陆,继续此次请求
			chain.doFilter(request, response);
		}
		System.out.println("用户登录验证！");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
