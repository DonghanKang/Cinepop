package com.mp.cinepop.store.model;

import java.util.List;
import java.util.Map;

public interface StoreService {
	public int insertPd(StoreVO vo);
	public int updatePd(StoreVO vo);
	public StoreVO selectByPdNo(int pdNo);
	public List<StoreVO> selectByCategory(String pctNo);
	public int deleteByPdNo(int pdNo);
	public String getCategoryName(String pctNo);
	public List<Map<String, Object>> selectCartByID(String id);
	public int insertOrders(OrdersVO ordersVo, List<CartVO> cartVo);
}
