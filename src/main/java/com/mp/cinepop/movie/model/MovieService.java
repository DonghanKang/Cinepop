package com.mp.cinepop.movie.model;

import java.util.List;

import com.mp.cinepop.common.SearchVO;

public interface MovieService {
	public List<MovieVO> movieSelectAll(SearchVO searchVO);
	public List<MovieVO> movieSelectAll2(MovieVO movieVo);
	public int selectTotalRecord(SearchVO searachVo);
	public MovieVO selectByNo(int MNO);
	public MovieVO selectByNo2(int MNO);
}
