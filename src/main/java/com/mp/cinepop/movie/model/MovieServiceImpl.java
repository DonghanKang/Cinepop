package com.mp.cinepop.movie.model;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mp.cinepop.common.SearchVO;

@Service
public class MovieServiceImpl implements MovieService{
	
	private final MovieDAO movieDAO;
	
	public MovieServiceImpl(MovieDAO movieDAO) {
		this.movieDAO = movieDAO;
	}

	public List<MovieVO> movieSelectAll(SearchVO searchVO){
		return movieDAO.movieSelectAll(searchVO);
	}
	
	public int selectTotalRecord(SearchVO searachVo) {
		return movieDAO.selectTotalRecord(searachVo);
	}

	public MovieVO selectByNo(int MNO) {
		return movieDAO.selectByNo(MNO);
	}
	public MovieVO selectByNo2(int MNO) {
		return movieDAO.selectByNo(MNO);
	}

	@Override
	public List<MovieVO> movieSelectAll2(MovieVO movieVo) {
		return movieDAO.movieSelectAll2(movieVo);
	}
}
