package com.mp.cinepop.store.model;

import java.util.List;
import java.util.Map;

import com.mp.cinepop.common.SearchVO;

public interface StoreService {
	public int insertPd(StoreVO vo);
	public int updatePd(StoreVO vo);
	public StoreVO selectByPdNo(int pdNo);
	public List<StoreVO> selectByCategory(String pctNo);
	public List<StoreVO> selectFourByCategory(String pctNo);
	public int deleteByPdNo(int pdNo);
	public String getCategoryName(String pctNo);
	public List<Map<String, Object>> selectCartByID(String id);
	public int insertOrders(OrdersVO ordersVo, List<CartVO> cartVo);
	public List<OrdersVO> selectOrdersByID(SearchVO searchVo);
	public int getTotalRecord(SearchVO searchVo);
	public List<Map<String, Object>> selectOrderDetail(int orderNo);
	public int insertPdReview(Map<String, Object> map);
	public List<PdReviewVO> selectPdReviewView(int pdNo);
}
