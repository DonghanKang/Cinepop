package com.mp.cinepop.store.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mp.cinepop.common.SearchVO;

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
		//공통되는 orderNo 추출
		int orderNo=storeDao.createOrderNo();
		ordersVo.setOrderNo(orderNo);
		
		//Orders 테이블 insert
		storeDao.insertOrders(ordersVo);
		
		//OrderDetails테이블 insert
		CartVO cartVo=new CartVO();
		for(int i=0;i<list.size();i++) {
			cartVo=list.get(i);
			cartVo.setCartNo(orderNo);
			cartVo.setPdOrder(i+1);
			
			storeDao.insertOrderDetails(cartVo);
		}
		
		//추가한 오더번호를 리턴
		return orderNo;
	}

	@Override
	public List<OrdersVO> selectOrdersByID(SearchVO searchVo) {
		return storeDao.selectOrdersByID(searchVo);
	}

	@Override
	public int getTotalRecord(SearchVO searchVo) {
		return storeDao.getTotalRecord(searchVo);
	}

	@Override
	public List<Map<String, Object>> selectOrderDetail(int orderNo) {
		return storeDao.selectOrderDetail(orderNo);
	}

	@Override
	@Transactional
	public int insertPdReview(Map<String, Object> map) {;
		int cnt=storeDao.insertPdReview(map);
		cnt=storeDao.updateReviewFlag(map);
		return cnt;
	}

	@Override
	public List<PdReviewVO> selectPdReviewView(int pdNo) {
		return storeDao.selectPdReviewView(pdNo);
	}
	
	
}
