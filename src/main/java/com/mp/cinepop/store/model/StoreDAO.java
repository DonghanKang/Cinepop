package com.mp.cinepop.store.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StoreDAO {
	public int insertPd(StoreVO vo);
	public int updatePd(StoreVO vo);
	public StoreVO selectByPdNo(int pdNo);
	public List<StoreVO> selectByCategory(String pctNo);
	public int deleteByPdNo(int pdNo);
	public String getCategoryName(String pctNo);
	public List<Map<String, Object>> selectCartByID(String id);
	public int insertOrders(OrdersVO ordersVo);
	public int insertOrderDetails(CartVO cartVo);
	public int getOrderNo();
	public List<OrdersVO> selectOrdersByID(Map<String, String> map);
}
