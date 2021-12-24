package com.mp.cinepop.store.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
}
