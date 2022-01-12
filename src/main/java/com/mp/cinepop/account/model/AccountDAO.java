package com.mp.cinepop.account.model;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;

@Mapper
public interface AccountDAO {
	//public List<AccountVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);

	public AccountVO selectByUserid(String userid);
	public int updateAccount(AccountVO vo);
	
}
