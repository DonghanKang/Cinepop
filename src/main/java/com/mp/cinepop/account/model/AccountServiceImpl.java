package com.mp.cinepop.account.model;

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
	public int insertPw(hashVO hashvo) {
		return accountdao.insertPw(hashvo);
	}
	
	
}
