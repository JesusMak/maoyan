package com.maoyan.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.Cinema;
import com.maoyan.bean.CinemaPic;
import com.maoyan.bean.Movie;
import com.maoyan.bean.MoviePlay;
import com.maoyan.service.CinemaService;
import com.maoyan.service.MovieInfoService;

/**
 * Servlet implementation class OrderCtrl
 */
@WebServlet("/CinemaCtrl")
public class CinemaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CinemaCtrl() {
        super();
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
		
		//查询电影院图片信息
		List<CinemaPic> cinemaPicList = CinemaService.getCinemaService().showCinemaPic();
		//查询电影院基本信息
		List<Cinema> cinemaInfo = CinemaService.getCinemaService().showCinemaInfo();
		//查询电影基本信息
		List<Movie> movieList = MovieInfoService.getMovieInfoService().showMovieInfo();
		//查询电影播放信息
		List<MoviePlay> moviePlayList = MovieInfoService.getMovieInfoService().showMoviePlayInfo();
			
		//将数据存到session域，转发给buy_index.jsp
		HttpSession session = request.getSession();
		//电影基本信息集合
		session.setAttribute("movieList", movieList);
		//电影播放信息集合
		session.setAttribute("moviePlayList", moviePlayList);
		//电影院基本信息集合
		session.setAttribute("cinemaInfo", cinemaInfo);
		//电影院图片信息
		session.setAttribute("cinemaPicList", cinemaPicList);
		
		request.getRequestDispatcher("/buy_index.jsp").forward(request, response);
		
	}

}
