package com.mp.cinepop.cart.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartDAO {
	public int insertCart(CartVO vo);
}
