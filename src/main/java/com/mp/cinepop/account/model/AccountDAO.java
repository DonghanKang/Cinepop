package com.mp.cinepop.account.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AccountDAO {
	public int insertAccount(AccountVO vo);
	
}
