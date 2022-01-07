package com.mp.cinepop.account.model;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.hash.model.hashVO;

@Mapper
public interface AccountDAO {
	public int insertAccount(AccountVO vo);
	public int insertHash(hashVO hashvo);
	
	public int duplicateId(Map<String, String> map);
	public String selectPwd(String userid);
	public AccountVO selectByUserid(String userid);
	public hashVO hashCheck(String digest);
	public String selectDigest(String userid);
	
	public int withdrawAccount(String userid);
}
