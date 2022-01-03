package com.mp.cinepop.qna.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;

@Mapper
public interface QnaDAO {
	public int insertQna(QnaVO vo);
	public List<QnaVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public int updateReadCount(int no);
	public int updateQna(QnaVO vo);
	public int deleteQna(int no);
}