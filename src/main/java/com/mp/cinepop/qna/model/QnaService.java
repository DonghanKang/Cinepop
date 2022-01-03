package com.mp.cinepop.qna.model;

import java.util.List;

import com.mp.cinepop.common.SearchVO;

public interface QnaService {
	public int insertQna(QnaVO vo);
	public List<QnaVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
	public int updateReadCount(int no);
	public int updateQna(QnaVO vo);
	public int deleteQna(int no);
}
