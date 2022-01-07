package com.mp.cinepop.account.model;

import java.security.NoSuchAlgorithmException;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.cinepop.account.controller.LoginController;
import com.mp.cinepop.hash.model.hashVO;

@Service
public class AccountServiceImpl implements AccountService{
	private static final Logger logger
	=LoggerFactory.getLogger(LoginController.class);
	
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
	public int loginCheck(String userid, String password) throws NoSuchAlgorithmException{
		String dbPwd = accountdao.selectPwd(userid);
		AccountVO accountVo = accountdao.selectByUserid(userid);
		String digest = accountdao.selectDigest(userid);
		hashVO hashVo = accountdao.hashCheck(accountVo.getId());
		
		int result=0;
		if(dbPwd == null || dbPwd.isEmpty()) {
			result=USERID_NONE;
		}else {
			if(dbPwd.equals(password)) {
				if(digest.equals(hashVo.getDigest())) {
					logger.info("Impl, digest => {}", digest);
					logger.info("Impl, hashVo => {}", hashVo);
					logger.info("Impl, accountVo => {}", accountVo);
					result=LOGIN_OK;
				}
			}else {
				result=DISAGREE_PWD;
			}
		}
		logger.info("Impl, result => {}", result);
		return result;
	}


	@Override
	public AccountVO selectByUserid(String userid) {
		return accountdao.selectByUserid(userid);
	}




	@Override
	public int withdrawAccount(String userid) {
		return accountdao.withdrawAccount(userid);
	}


	
	
	
}
