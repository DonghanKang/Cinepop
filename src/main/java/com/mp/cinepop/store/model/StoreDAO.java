package com.mp.cinepop.store.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StoreDAO {
	public int insertPd(StoreVO vo);
	public int updatePd(StoreVO vo);
	public StoreVO selectByPdNo(int pdNo);
}
