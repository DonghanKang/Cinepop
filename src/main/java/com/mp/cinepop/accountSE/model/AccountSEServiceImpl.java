package com.mp.cinepop.accountSE.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.cinepop.common.SearchVO;

@Service
public class AccountSEServiceImpl implements AccountSEService{

	@Autowired
	private AccountSEDAO accountSEDao;
	
	/*
	 * @Override public List<AccountSEVO> selectAll(SearchVO searchVO) { return
	 * accountSEDao.selectAll(searchVO); }
	 */

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return accountSEDao.selectTotalRecord(searchVo);
	}

	@Override
	public AccountSEVO selectByNo(int no) {
		return accountSEDao.selectByNo(no);
	}

	@Override
	public int updateAccount(AccountSEVO vo) {
		return accountSEDao.updateAccount(vo);
	}

}
