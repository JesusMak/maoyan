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
		 //处理字符编码：request，response
		request.setCharacterEncoding("utf-8"); // 解决的是服务器的前端编码
		response.setCharacterEncoding("utf-8"); // 解决的是服务器的后端编码
		response.setContentType("text/html;charset=utf8"); // 解决的是浏览器的编码

	
		// 接收界面movies_list.jsp传入过来的信息：通过HttpServletRequest对象获得请求的输入信息
        String grade = request.getParameter("grade");
		String remark=request.getParameter("remark");
//		String content=request.getParameter("content");
		
		// 将接收的信息打包到comment对象中
		Comment comment = new Comment();
		comment.setGrade(grade);
		comment.setRemark(remark);
//		comment.setContent(content);
	

		// 把user对象的数据，往下一个层次传递。
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
