package com.mp.cinepop.questionAnswer.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mp.cinepop.common.SearchVO;

@Service
public class QuestionAnswerServiceImpl implements QuestionAnswerService{
	
	@Autowired
	private final QuestionAnswerDAO dao;
	
	public QuestionAnswerServiceImpl(QuestionAnswerDAO dao) {
		super();
		this.dao = dao;
	}

	public int userinsertQuestion() {
		return dao.userinsertQuestion();
	}

	public List<QuestionAnswerVO> selectAll(SearchVO searchVo) {
		// TODO Auto-generated method stub
		return dao.selectAll(searchVo);
	}

	public int selectTotalRecord(SearchVO searchVo) {
		// TODO Auto-generated method stub
		return dao.selectTotalRecord(searchVo);
	}

	public QuestionAnswerVO selectByNo(int no) {
		// TODO Auto-generated method stub
		return dao.selectByNo(no);
	}

	public int updatequestion(QuestionAnswerVO vo) {
		// TODO Auto-generated method stub
		return dao.updatequestion(vo);
	}

	public int deletequestion(int no) {
		// TODO Auto-generated method stub
		return dao.deletequestion(no);
	}
	
}
