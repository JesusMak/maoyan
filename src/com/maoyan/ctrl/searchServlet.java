package com.maoyan.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maoyan.bean.Movie;
import com.maoyan.dao.MovieDaoImpl;

import net.sf.json.JSONArray;

public class searchServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	static List<String> datas = new ArrayList<String>();
	static List<Movie> movieList = MovieDaoImpl.getMovieDaoImpl().query();
	static {
		for (Movie movie : movieList) {
			String movieName = movie.getMovieName();
			datas.add(movieName);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		String keyword = req.getParameter("keyword");
		List<String> listData = getData(keyword);
		System.out.println(JSONArray.fromObject(listData));
		JSONArray.fromObject(listData);
		resp.getWriter().write(JSONArray.fromObject(listData).toString());
	}

	public List<String> getData(String keyword) {
		List<String> list = new ArrayList<String>();
		for (String data : datas) {
			if (data.contains(keyword)) {
				list.add(data);
			}
		}
		return list;
	}

}
