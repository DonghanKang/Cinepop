package com.mp.cinepop.movieinsert.model;

import org.springframework.stereotype.Service;

@Service
public class MovieinsertServiceImpl implements MovieinsertService{
	
	private final MovieinsertDAO movieinsertDAO;

	public MovieinsertServiceImpl(MovieinsertDAO movieinsertDAO) {
		this.movieinsertDAO = movieinsertDAO;
	}
	
	public int insertMovie(MovieinsertVO vo) {
		return movieinsertDAO.insertMovie(vo);
	}
	
}
