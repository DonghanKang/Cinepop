package com.mp.cinepop.accountSE.model;

import java.util.List;

import com.mp.cinepop.common.SearchVO;

public interface AccountSEService {
	//public List<AccountSEVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
	public AccountSEVO selectByNo(int no);
	public int updateAccount(AccountSEVO vo);
}
