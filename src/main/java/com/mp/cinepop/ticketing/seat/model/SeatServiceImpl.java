package com.mp.cinepop.ticketing.seat.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	public int insertSeat(SeatVO vo) {
		return seatDao.insertSeat(vo);
	}
}
