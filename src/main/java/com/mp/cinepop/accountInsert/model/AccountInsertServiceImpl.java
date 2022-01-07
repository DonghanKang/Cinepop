package com.mp.cinepop.accountInsert.model;

import java.security.NoSuchAlgorithmException;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.cinepop.accountInsert.controller.LoginController;
import com.mp.cinepop.hash.model.hashVO;

@Service
public class AccountInsertServiceImpl implements AccountInsertService{
	private static final Logger logger
	=LoggerFactory.getLogger(LoginController.class);
	
	private final AccountInsertDAO accountInsertDao;
	
	@Autowired
	public AccountInsertServiceImpl(AccountInsertDAO accountInsertDao) {
		super();
		this.accountInsertDao = accountInsertDao;
	}


	@Override
	public int insertAccount(AccountInsertVO vo) {
		int cnt=accountInsertDao.insertAccount(vo);
		return cnt;
	}


	@Override
	public int insertHash(hashVO hashvo) {
		return accountInsertDao.insertHash(hashvo);
	}


	@Override
	public int duplicateId(Map<String, String> map) {
		int count=accountInsertDao.duplicateId(map);
		
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
		String dbPwd = accountInsertDao.selectPwd(userid);
		AccountInsertVO accountVo = accountInsertDao.selectByUserid(userid);
		String digest = accountInsertDao.selectDigest(userid);
		hashVO hashVo = accountInsertDao.hashCheck(accountVo.getId());
		
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
	public AccountInsertVO selectByUserid(String userid) {
		return accountInsertDao.selectByUserid(userid);
	}




	@Override
	public int withdrawAccount(String userid) {
		return accountInsertDao.withdrawAccount(userid);
	}


	
	
	
}
