package com.mp.cinepop.ticketing.seat.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SeatDAO {
	String[] lookUpSeat(int sNo);
	int insertSeat(SeatVO vo);
	List<Map<String, Object>> chkTicket(String userid);
	Map<String, Object> chkTD(String userid, int sTNo);
}
