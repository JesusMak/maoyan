package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Comment;
import com.maoyan.service.MovieServiceImpl;

/**
 * Servlet implementation class ServletManager3
 */
@WebServlet("/queryCommentCtrl")
@SuppressWarnings("serial")
public class QueryCommentCtrl extends HttpServlet {

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QueryCommentCtrl() {
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
		// �����ַ����룺request��response
		request.setCharacterEncoding("utf-8"); // ������Ƿ�������ǰ�˱���
		response.setCharacterEncoding("utf-8"); // ������Ƿ������ĺ�˱���
		response.setContentType("text/html;charset=utf8"); // �������������ı���

		List<Comment> commentList = MovieServiceImpl.getMovieServiceImpl().queryComments();
		request.setAttribute("COMMENT_LIST", commentList);

		request.getRequestDispatcher("/movies_list.jsp").forward(request, response);

	}

}
