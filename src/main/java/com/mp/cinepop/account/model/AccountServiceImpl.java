package com.mp.cinepop.account.model;

import java.security.NoSuchAlgorithmException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.cinepop.hash.model.hashVO;

@Service
public class AccountServiceImpl implements AccountService{
	
	private final AccountDAO accountdao;
	
	@Autowired
	public AccountServiceImpl(AccountDAO accountdao) {
		super();
		this.accountdao = accountdao;
	}


	@Override
	public int insertAccount(AccountVO vo) {
		int cnt=accountdao.insertAccount(vo);
		return cnt;
	}


	@Override
	public int insertHash(hashVO hashvo) {
		return accountdao.insertHash(hashvo);
	}


	@Override
	public int duplicateId(Map<String, String> map) {
		int count=accountdao.duplicateId(map);
		
		int result=0;
		if(count>0) {  //해당 아이디가 이미 존재함
			result=EXIST_ID;
		}else {
			result=NON_EXIST_ID;			
		}
		
		return result;
	}


	@Override
	public int loginCheck(String userid, String digest) throws NoSuchAlgorithmException{
		String dbPwd = accountdao.selectPwd(userid);
		int result=0;
		if(dbPwd == null || dbPwd.isEmpty()) {
			result=USERID_NONE;
		}else {
			if(dbPwd.equals(digest)) {
				result=LOGIN_OK;
			}else {
				result=DISAGREE_PWD;
			}
		}
		
		return result;
	}


	@Override
	public AccountVO selectByUserid(String userid) {
		return accountdao.selectByUserid(userid);
	}


	@Override
	public int updateAccount(AccountVO vo) {
		return accountdao.updateAccount(vo);
	}


	@Override
	public int withdrawAccount(String userid) {
		return accountdao.withdrawAccount(userid);
	}


	
	
	
}
