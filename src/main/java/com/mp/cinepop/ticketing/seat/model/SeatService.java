package com.mp.cinepop.ticketing.seat.model;

import java.util.List;

public interface SeatService {
	public List<String> lookUpSeat(int sNo);
	int insertSeat(SeatVO vo);
	
}
