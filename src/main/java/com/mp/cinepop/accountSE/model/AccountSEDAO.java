package com.mp.cinepop.accountSE.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;

@Mapper
public interface AccountSEDAO {
	//public List<AccountSEVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);
	public AccountSEVO selectByNo(int no);
	public int updateAccount(AccountSEVO vo);
	
	
}
