package com.mp.cinepop.questionAnswer.model;

import java.util.List;

import com.mp.cinepop.common.SearchVO;

public interface QuestionAnswerService {
	int userinsertQuestion(QuestionAnswerVO vo);
	public List<QuestionAnswerVO> selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public QuestionAnswerVO selectByNo(int no);
	public int updatequestion(QuestionAnswerVO vo);
	public int deletequestion(int no);
	public int updateReadCount(int no);
	public int updateReply(QuestionAnswerVO vo);
}
