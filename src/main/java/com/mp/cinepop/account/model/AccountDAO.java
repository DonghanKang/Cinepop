package com.mp.cinepop.account.model;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.hash.model.hashVO;

@Mapper
public interface AccountDAO {
	public int insertAccount(AccountVO vo);
	public int insertPw(hashVO hashvo);
	
}
