package com.mp.cinepop.questionAnswer.model;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;

@Mapper
public interface QuestionAnswerDAO {
	int userinsertQuestion(QuestionAnswerVO vo);
	public List<QuestionAnswerVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public QuestionAnswerVO selectByNo(int no);
	public int updatequestion(QuestionAnswerVO vo);
	public int deletequestion(int no);
	int updateReadCount(int no);
}
