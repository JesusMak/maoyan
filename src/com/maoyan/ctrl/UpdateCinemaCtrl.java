package com.maoyan.ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.maoyan.bean.Cinema;
import com.maoyan.service.CinemaServiceImpl;

/**
 * Servlet implementation class UpdateCinemaCtrl
 */
public class UpdateCinemaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCinemaCtrl() {
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
		int cinemaId = Integer.parseInt(request.getParameter("cinemaId"));	
		String cinemaName = request.getParameter("cinemaName");
		String address = request.getParameter("address");
		String hall = request.getParameter("hall");
		String area = request.getParameter("area");
		
		Cinema cinema = new Cinema();
		cinema.setCinemaId(cinemaId);
		cinema.setCinemaName(cinemaName);
		cinema.setAddress(address);
		cinema.setHall(hall);
		cinema.setArea(area);
		
		String cinemaNameDB = CinemaServiceImpl.getCinemaServiceImpl().updateCinema(cinema);
		if(cinemaNameDB == null) {
            JOptionPane.showMessageDialog(null, "电影院"+cinemaNameDB+"信息修改失败 ！", "修改电影院信息失败！", JOptionPane.PLAIN_MESSAGE);
            request.getRequestDispatcher("/QueryCinemaCtrl").forward(request, response);
		}else {
            JOptionPane.showMessageDialog(null, "电影院"+cinemaNameDB+"信息修改成功 ！", "电影院信息修改成功 ！", JOptionPane.PLAIN_MESSAGE);
            request.getRequestDispatcher("/QueryCinemaCtrl").forward(request, response);
		}
	}

}
