package com.mp.cinepop.ticketing.seat.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;

@Mapper
public interface SeatDAO {
	String[] lookUpSeat(int sNo);
	int insertSeat(SeatVO vo);
	List<Map<String, Object>> chkTicket(String userid);
	Map<String, Object> chkTD(String userid, int sTNo);
	int insertMOrder(String userid, int sTNo, int tPrice, int theNum);
	int cntMOrderById(SearchVO vo);
	List<Map<String, Object>> selectMOrderById(SearchVO vo);
}
