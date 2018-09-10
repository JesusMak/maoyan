package com.maoyan.service;

import java.util.List;

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

	// 沈荣楚
	/*
	 * 插入电影院信息
	 */
	public String insertCinema(Cinema cinema) {
		String cinemaDB = CinemaDaoImpl.getCinemaDaoImpl().insertCinema(cinema);
		return cinemaDB;
	}

	/*
	 * 查询电影院信息
	 */
	public List<Cinema> queryCinema(int pageSize, int pageNow, String tagName) {
		List<Cinema> cinemaList = CinemaDaoImpl.getCinemaDaoImpl().queryCinemaByPage(pageSize, pageNow, tagName);
		return cinemaList;
	}

	/*
	 * 删除电影院
	 */
	public String deleteCinema(int cinemaId) {
		String result = CinemaDaoImpl.getCinemaDaoImpl().deleteCinema(cinemaId);
		return result;
	}

	/*
	 * 更新电影院信息
	 * 
	 */
	public String updateCinema(Cinema cinema) {
		String cinemaDB = CinemaDaoImpl.getCinemaDaoImpl().updateCinema(cinema);
		return cinemaDB;
	}

	// h后台查询电影的方法
	public List<Cinema> queryCinema() {
		List<Cinema> cinemaList = CinemaDaoImpl.getCinemaDaoImpl().queryCinema();
		return cinemaList;
	}

}
