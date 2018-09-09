package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Movie;
import com.maoyan.dao.CinemaDaoImpl;
import com.maoyan.service.MovieServiceImpl;

/**
 * Servlet implementation class QueryMovieList
 */
public class QueryMovieBoardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryMovieBoardCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pageSize = 10;
		int pageNow = 1;
		String boardNo = "grade";
		if(request.getParameter("boardNo")!=null) {
			boardNo = request.getParameter("boardNo");
		}
		String curPageNow = request.getParameter("curPageNow");
		if(curPageNow != null) {
			pageNow = Integer.parseInt(curPageNow);
		}
		
		List<Movie> movieList = MovieServiceImpl.getMovieServiceImpl().queryMovie(boardNo, pageSize, pageNow);
				
		request.setAttribute("MOVIE_LIST", movieList);
		request.setAttribute("PAGE_NOW", pageNow);
		request.setAttribute("PAGE_COUNT", CinemaDaoImpl.getCinemaDaoImpl().pageCount);
		request.setAttribute("BOARDNO", boardNo);

		request.getRequestDispatcher("page/board.jsp").forward(request, response);
	}

}


