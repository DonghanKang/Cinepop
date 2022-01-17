package com.mp.cinepop.ticketing.seat.model;

import java.util.List;
import java.util.Map;

public interface SeatService {
	public List<String> lookUpSeat(int sNo);
	int insertSeat(SeatVO vo);
	List<Map<String, Object>> chkTicket(String userid);
	Map<String, Object> chkTD(String userid, int sTNo);
	
}
