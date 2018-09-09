package com.maoyan.ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.maoyan.service.CinemaServiceImpl;

/**
 * Servlet implementation class DeleteCinemaCtrl
 */
public class DeleteCinemaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCinemaCtrl() {
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
		int cinemaId = Integer.parseInt(request.getParameter("cid")) ;
		String result = CinemaServiceImpl.getCinemaServiceImpl().deleteCinema(cinemaId);
		if(result == null) {
            JOptionPane.showMessageDialog(null, "删除电影院失败！", "删除电影院信息失败！", JOptionPane.PLAIN_MESSAGE);
		}else {
            JOptionPane.showMessageDialog(null, "删除电影院成功！", "删除电影院信息成功！", JOptionPane.PLAIN_MESSAGE);
			request.getRequestDispatcher("QueryCinemaCtrl").forward(request, response);
		}
	
	}

}
