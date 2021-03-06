package com.mp.cinepop.accountInsert.model;

import java.security.NoSuchAlgorithmException;
import java.util.Map;

import com.mp.cinepop.hash.model.hashVO;

public interface AccountInsertService {
	//아이디 중복확인시 필요한 상수
	public static final int EXIST_ID=1;  //해당 아이디가 이미 존재함
	public static final int NON_EXIST_ID=2;  //해당 아이디가 존재하지 않음-사용가능
	
	//로그인 처리시 필요한 상수
	public static final int LOGIN_OK=1;  //로그인 성공
	public static final int DISAGREE_PWD=2; //비번 불일치
	int USERID_NONE=3; //아이디 존재하지 않음
	
	public int insertAccount(AccountInsertVO vo);
	public int insertHash(hashVO hashvo);
	
	public int duplicateId(Map<String, String> map);
	public int loginCheck(String userid, String password) throws NoSuchAlgorithmException;
	public AccountInsertVO selectByUserid(String userid);
	
	public int withdrawAccount(String id);
	public int deleteHash(String id);
}
