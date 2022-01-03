package com.mp.cinepop.account.model;

import com.mp.cinepop.hash.model.hashVO;

public interface AccountService {
	public int insertAccount(AccountVO vo);
	public int insertPw(hashVO hashvo);
}
