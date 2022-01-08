package com.mp.cinepop.cart.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService{
	private final CartDAO cartDao;
	
	@Autowired
	public CartServiceImpl(CartDAO cartDao) {
		this.cartDao=cartDao;
	}
	
	
	@Override
	public int insertCart(CartVO vo) {
		return cartDao.insertCart(vo);
	}
	
}
