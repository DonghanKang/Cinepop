package com.mp.cinepop.qna.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mp.cinepop.common.SearchVO;

@Service
public class QnaServiceImpl implements QnaService{
	@Autowired
	private QnaDAO qnaDao;

	@Transactional
	public int insertQna(QnaVO vo) {
		return qnaDao.insertQna(vo);
	}

	@Override
	public List<QnaVO> selectAll(SearchVO searchVO) {
		return qnaDao.selectAll(searchVO);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return qnaDao.selectTotalRecord(searchVo);
	}
	
	@Override
	public QnaVO selectByNo(int no) {
		return qnaDao.selectByNo(no);
	}
	
	@Override
	public int updateReadCount(int no) {
		return qnaDao.updateReadCount(no);
	}

	@Override
	public int updateQna(QnaVO vo) {
		return qnaDao.updateQna(vo);
	}

	@Override
	public int deleteQna(int no) {
		return qnaDao.deleteQna(no);
	}


	

	
	
}
