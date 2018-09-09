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
 * �û�ģ���в�ѯ�Ŀ��Ʋ�
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
		 //�����ַ����룺request��response
			request.setCharacterEncoding("utf-8");   //������Ƿ�������ǰ�˱��� 
			response.setCharacterEncoding("utf-8");	//������Ƿ������ĺ�˱��� 
			response.setContentType("text/html;charset=utf8");  //�������������ı���


            int pageSize=6;//�涨ÿҳ��6����¼
			int pageNow=1;//Ĭ����ʾ��һҳ
			//��ѯ���е��û�������UserServiceImplȥ���ˡ�
		    String curPageNow=request.getParameter("curPageNow");
		    if(curPageNow!=null){
		    	     pageNow=Integer.parseInt(curPageNow);
		    }
			List<Movie> movieList = MovieServiceImpl.getMovieServiceImpl().queryMovies(pageSize,pageNow);
		
			//userList����ͨ��request�е�setAttribute�������б���ֵ
			request.setAttribute("MOVIE_LIST", movieList);
			request.setAttribute("PAGE_NOW", pageNow);
			request.setAttribute("PAGE_COUNT", MovieDaoImpl.getMovieDaoImpl().pageCount);
			request.getRequestDispatcher("/coming_soon.jsp").forward(request, response);


		
		
		
	 
		  
		
	}
	
	
	}
	


