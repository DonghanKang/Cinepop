package com.mp.cinepop.store.model;

import java.util.List;

public interface StoreService {
	public int insertPd(StoreVO vo);
	public int updatePd(StoreVO vo);
	public StoreVO selectByPdNo(int pdNo);
	public List<StoreVO> selectByCategory(String pctNo);
	public int deleteByPdNo(int pdNo);
}
