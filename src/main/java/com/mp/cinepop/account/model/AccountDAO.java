package com.mp.cinepop.account.model;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.hash.model.hashVO;

@Mapper
public interface AccountDAO {
	//public List<AccountVO> selectAll(SearchVO searchVO);
	int selectTotalRecord(SearchVO searchVo);

	public hashVO hashCheck(String salt);
	public int updateHash(hashVO hashvo);
	
	public AccountVO selectByUserid(String userid);
	public int updateAccount(AccountVO vo);
	
}
