package com.mp.cinepop.event.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mp.cinepop.common.SearchVO;

@Mapper
public interface EventDAO {
	public int insertEvent(EventVO vo);
	public List<EventVO>selectAll(SearchVO searchVo);
	int selectTotalRecord(SearchVO searchVo);
	public EventVO selectByNo(int no);
}
