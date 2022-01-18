package com.mp.cinepop.ticketing.seat.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mp.cinepop.common.SearchVO;

@Service
public class SeatServiceImpl implements SeatService{
	private final SeatDAO seatDao;

	@Autowired
	public SeatServiceImpl(SeatDAO seatDao) {
		this.seatDao=seatDao;
	}

	@Override
	public List<String> lookUpSeat(int sNo) {
		List<String> list=new ArrayList<String>();
		String[] arr=seatDao.lookUpSeat(sNo);
		for(int i=0;i<arr.length;i++) {
			String[] seat=arr[i].split(",");
			for(int j=0;j<seat.length;j++) {
				list.add(seat[j]);
			}
		}
		return list;
	}
	
	@Override
	@Transactional
	public int insertHistory(SeatVO vo,int tPrice, int theNum) {
		int result1=seatDao.insertSeat(vo);
		int sTNo=vo.getsTNo();
		String userid=vo.getUserid();
		int result2=seatDao.insertMOrder(userid, sTNo, tPrice, theNum);
		return result1+result2;
	}

	@Override
	public List<Map<String, Object>> chkTicket(String userid) {
		return seatDao.chkTicket(userid);
	}

	@Override
	public Map<String, Object> chkTD(String userid, int sTNo) {
		return seatDao.chkTD(userid, sTNo);
	}

	@Override
	public int cntMOrderById(SearchVO vo) {
		return seatDao.cntMOrderById(vo);
	}

	@Override
	public List<Map<String, Object>> selectMOrderById(SearchVO vo) {
		return seatDao.selectMOrderById(vo);
	}

	
	
}
