package com.mp.cinepop.account.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
}
