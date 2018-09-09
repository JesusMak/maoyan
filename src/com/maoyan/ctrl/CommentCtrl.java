package com.maoyan.ctrl;

import java.io.BufferedReader;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.Comment;
import com.maoyan.service.MovieServiceImpl;



/**
 * Servlet implementation class ServletManager3
 */
@SuppressWarnings("serial")
public class CommentCtrl extends HttpServlet {

	

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CommentCtrl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 //�����ַ����룺request��response
		request.setCharacterEncoding("utf-8"); // ������Ƿ�������ǰ�˱���
		response.setCharacterEncoding("utf-8"); // ������Ƿ������ĺ�˱���
		response.setContentType("text/html;charset=utf8"); // �������������ı���

	
		// ���ս���movies_list.jsp�����������Ϣ��ͨ��HttpServletRequest�����������������Ϣ
        String grade = request.getParameter("grade");
		String remark=request.getParameter("remark");
//		String content=request.getParameter("content");
		
		// �����յ���Ϣ�����comment������
		Comment comment = new Comment();
		comment.setGrade(grade);
		comment.setRemark(remark);
//		comment.setContent(content);
	

		// ��user��������ݣ�����һ����δ��ݡ�
		 try {
			MovieServiceImpl.getMovieServiceImpl().addComment(comment);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			List<Comment> commentList=MovieServiceImpl.getMovieServiceImpl().queryComments();
			request.setAttribute("COMMENT_LIST", commentList);
			
			
			request.getRequestDispatcher("/movies_list.jsp").forward(request, response);

	}

	

}
