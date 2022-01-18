package com.mp.cinepop.ticketing.seat.model;

import java.util.List;
import java.util.Map;

import com.mp.cinepop.common.SearchVO;

public interface SeatService {
	public List<String> lookUpSeat(int sNo);
	int insertHistory(SeatVO vo,int tPrice, int theNum);
	List<Map<String, Object>> chkTicket(String userid);
	Map<String, Object> chkTD(String userid, int sTNo);
	int cntMOrderById(SearchVO vo);
	List<Map<String, Object>> selectMOrderById(SearchVO vo);
}
