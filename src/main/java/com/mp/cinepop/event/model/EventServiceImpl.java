package com.mp.cinepop.event.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.cinepop.common.SearchVO;

@Service
public class EventServiceImpl implements EventService {
	private final EventDAO eventdao;
	
	@Autowired
	public EventServiceImpl(EventDAO eventdao) {
		this.eventdao = eventdao;
	}

	public int insertEvent(EventVO vo) {
		return eventdao.insertEvent(vo);
	}

	@Override
	public List<EventVO> selectAll(SearchVO searchVo) {
		return eventdao.selectAll(searchVo);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return eventdao.selectTotalRecord(searchVo);
	}

	@Override
	public EventVO selectByNo(int no) {
		return eventdao.selectByNo(no);
	}

	@Override
	public int updateEvent(EventVO vo) {
		return eventdao.updateEvent(vo);
	}

	@Override
	public int deleteEvent(int no) {
		return eventdao.deleteEvent(no);
	}

	

	

	
}
