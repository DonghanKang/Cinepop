package com.mp.cinepop.ticketing.seat.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SeatDAO {
	String[] lookUpSeat(int sNo);
	int insertSeat(SeatVO vo);
}
