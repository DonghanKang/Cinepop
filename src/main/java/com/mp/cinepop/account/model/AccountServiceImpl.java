package com.mp.cinepop.account.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.hash.model.hashVO;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	private AccountDAO accountDao;
	
	/*
	 * @Override public List<AccountVO> selectAll(SearchVO searchVO) { return
	 * accountDao.selectAll(searchVO); }
	 */

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return accountDao.selectTotalRecord(searchVo);
	}
	
	@Override
	public int updateHash(hashVO hashvo) {
		return accountDao.updateHash(hashvo);
	}

	@Override
	public AccountVO selectByUserid(String userid) {
		return accountDao.selectByUserid(userid);
	}
	
	@Override
	public int updateAccount(AccountVO vo) {
		return accountDao.updateAccount(vo);
	}


	
	

}
