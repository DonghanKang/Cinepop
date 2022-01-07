package com.mp.cinepop.account.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;

@Mapper
public interface AccountDAO {
	//public List<AccountVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
	public AccountVO selectByNo(int no);
	public int updateAccount(AccountVO vo);
	
	
}
