package com.maoyan.ctrl;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maoyan.bean.User;
import com.maoyan.service.UserInfoService;

/**
 * Servlet implementation class UpdateUserCtrl
 */
@WebServlet("/UpdateUserCtrl")
public class UpdateUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserCtrl() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String userName = request.getParameter("userName");
		String gender = request.getParameter("gender");
		int year = Integer.parseInt(request.getParameter("year").trim()) ;
		int month = Integer.parseInt(request.getParameter("month").trim()) ;
		int day = Integer.parseInt(request.getParameter("day").trim()) ;
		String marriage = request.getParameter("marriage");
		String job = request.getParameter("job");
		String[] interest = request.getParameterValues("interest[]");
		String naming = request.getParameter("naming");
		StringBuffer hobby = new StringBuffer();
		for(int i = 0;i<interest.length;i++) {
			hobby.append(interest[i]);
		}		
		Date birthday = new Date();
		Date date = new Date();
		GregorianCalendar gc = new GregorianCalendar();
		gc.set(Calendar.YEAR, year);
		gc.set(Calendar.MONTH, month);
		gc.set(Calendar.DAY_OF_MONTH, day);
		date = gc.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String formatdate = sdf.format(date);
		try {
			 birthday = sdf.parse(formatdate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		User user = new User();
		user.setUserName(userName);
		user.setSex(gender);
		user.setBirthday(birthday);
		user.setStatus(marriage);
		user.setJob(job);
		user.setHobby(hobby.toString());
		user.setNaming(naming);
		UserInfoService.getUserInfoService().updateuser(user, "17875512027");
		request.setAttribute("user", user);				
		request.getRequestDispatcher("/en/profile.jsp").forward(request, response);
		
	}

}
