package com.mp.cinepop.accountInsert.model;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.hash.model.hashVO;

@Mapper
public interface AccountInsertDAO {
	public int insertAccount(AccountInsertVO vo);
	public int insertHash(hashVO hashvo);
	
	public int duplicateId(Map<String, String> map);
	public String selectPwd(String userid);
	public AccountInsertVO selectByUserid(String userid);
	public hashVO hashCheck(String digest);
	public String selectDigest(String userid);
	
	public int withdrawAccount(String userid);
}
