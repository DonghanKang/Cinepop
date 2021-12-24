package com.mp.cinepop.store.model;

public interface StoreService {
	public int insertPd(StoreVO vo);
	public int updatePd(StoreVO vo);
	public StoreVO selectByPdNo(int pdNo);
}
