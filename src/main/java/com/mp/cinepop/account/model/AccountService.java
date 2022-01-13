package com.mp.cinepop.account.model;

import java.util.List;

import com.mp.cinepop.common.SearchVO;

public interface AccountService {
	//public List<AccountVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
	
	public AccountVO selectByUserid(String userid);
	public int updateAccount(AccountVO vo);
}
