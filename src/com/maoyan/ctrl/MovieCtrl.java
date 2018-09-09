package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Movie;
import com.maoyan.dao.MovieDaoImpl;
import com.maoyan.service.MovieServiceImpl;

/**
 * 用户模块中查询的控制层
 */
public class MovieCtrl extends HttpServlet {

       

	/**
     * @see HttpServlet#HttpServlet()
     */
    public MovieCtrl() {
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
		 //处理字符编码：request，response
			request.setCharacterEncoding("utf-8");   //解决的是服务器的前端编码 
			response.setCharacterEncoding("utf-8");	//解决的是服务器的后端编码 
			response.setContentType("text/html;charset=utf8");  //解决的是浏览器的编码


            int pageSize=6;//规定每页是6条记录
			int pageNow=1;//默认显示第一页
			//查询所有的用户：交给UserServiceImpl去做了。
		    String curPageNow=request.getParameter("curPageNow");
		    if(curPageNow!=null){
		    	     pageNow=Integer.parseInt(curPageNow);
		    }
			List<Movie> movieList = MovieServiceImpl.getMovieServiceImpl().queryMovies(pageSize,pageNow);
		
			//userList可以通过request中的setAttribute方法进行保存值
			request.setAttribute("MOVIE_LIST", movieList);
			request.setAttribute("PAGE_NOW", pageNow);
			request.setAttribute("PAGE_COUNT", MovieDaoImpl.getMovieDaoImpl().pageCount);
			request.getRequestDispatcher("/coming_soon.jsp").forward(request, response);


		
		
		
	 
		  
		
	}
	
	
	}
	


