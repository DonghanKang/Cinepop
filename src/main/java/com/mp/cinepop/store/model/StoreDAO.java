package com.mp.cinepop.store.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StoreDAO {
	public int insertPd(StoreVO vo);
	public int updatePd(StoreVO vo);
	public StoreVO selectByPdNo(int pdNo);
	public List<StoreVO> selectByCategory(String pctNo);
}
