package com.mp.cinepop.account.model;

import java.util.List;

import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.hash.model.hashVO;

public interface AccountService {
	//public List<AccountVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
	
	public int updateHash(hashVO hashvo);
	
	public AccountVO selectByUserid(String userid);
	public int updateAccount(AccountVO vo);
}
