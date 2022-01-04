package com.mp.cinepop.movie.model;

import java.util.List;

import com.mp.cinepop.common.SearchVO;

public interface MovieService {
	public List<MovieVO> movieSelectAll(SearchVO searchVO);
	public int selectTotalRecord(SearchVO searachVo);
	public MovieVO selectByNo(int MNO);
}
