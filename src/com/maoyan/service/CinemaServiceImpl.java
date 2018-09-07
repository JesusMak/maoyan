package com.maoyan.service;

import com.maoyan.bean.Cinema;
import com.maoyan.dao.CinemaDaoImpl;

public class CinemaServiceImpl {
	private static CinemaServiceImpl cinemaServiceImpl;

	private CinemaServiceImpl() {

	}

	public static CinemaServiceImpl getCinemaServiceImpl() {

		if (cinemaServiceImpl == null) {
			cinemaServiceImpl = new CinemaServiceImpl();
		}

		return cinemaServiceImpl;
	}

	// 添加电影院方法
	public void addCinema(Cinema cinema) {
		CinemaDaoImpl.getCinemaDaoImpl().addCinema(cinema);
	}

}
