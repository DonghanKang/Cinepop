package com.mp.cinepop.store.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StoreServiceImpl implements StoreService {
	private StoreDAO storeDao;
	
	@Autowired
	public StoreServiceImpl(StoreDAO storeDao) {
		super();
		this.storeDao = storeDao;
	}

	@Override
	public int insertPd(StoreVO vo) {
		return storeDao.insertPd(vo);
	}

	@Override
	public int updatePd(StoreVO vo) {
		return storeDao.updatePd(vo);
	}

	@Override
	public StoreVO selectByPdNo(int pdNo) {
		return storeDao.selectByPdNo(pdNo);
	}


	@Override
	public List<StoreVO> selectByCategory(String pctNo) {
		return storeDao.selectByCategory(pctNo);
	}

	@Override
	public int deleteByPdNo(int pdNo) {
		return storeDao.deleteByPdNo(pdNo);
	}

	@Override
	public String getCategoryName(String pctNo) {
		return storeDao.getCategoryName(pctNo);
	}

	
	
	@Override
	public List<Map<String, Object>> selectCartByID(String id) {
		return storeDao.selectCartByID(id);
	}

	@Override
	@Transactional
	public int insertOrders(OrdersVO ordersVo, List<CartVO> list) {
		int orderNo=storeDao.getOrderNo();
		ordersVo.setOrderNo(orderNo);
		
		int cnt=storeDao.insertOrders(ordersVo);
		
		CartVO cartVo=new CartVO();
		for(int i=0;i<list.size();i++) {
			cartVo=list.get(i);
			cartVo.setCartNo(orderNo);
			
			cnt=storeDao.insertOrderDetails(cartVo);
		}
		
		return cnt;
	}
}
