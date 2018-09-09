package com.maoyan.service;

import java.util.List;

import com.maoyan.bean.Cinema;
import com.maoyan.bean.CinemaPic;
import com.maoyan.dao.CinemaDao;

public class CinemaService {

	private static CinemaService cinemaService;

	public CinemaService() {

	}

	public static CinemaService getCinemaService() {
		if (cinemaService == null) {
			cinemaService = new CinemaService();
		}
		return cinemaService;
	}

	/**
	 * 电影院图片信息
	 * 
	 * @return
	 */
	public List<CinemaPic> showCinemaPic() {
		List<CinemaPic> cinemaPic = new CinemaDao().showCinemaPic();
		return cinemaPic;
	}

	/**
	 * 电影院信息
	 * 
	 * @return
	 */
	public List<Cinema> showCinemaInfo() {
		List<Cinema> cinemaInfo = new CinemaDao().showCinemaInfo();
		return cinemaInfo;
	}
	/**
	 * 电影院座位信息
	 * 
	 * @return
	 */
	// public List<Seat> showCinemaSeat() {
	// List<Seat> seatList = new CinemaDao().showCinemaSeat();
	// return seatList;
	// }
	//

}
