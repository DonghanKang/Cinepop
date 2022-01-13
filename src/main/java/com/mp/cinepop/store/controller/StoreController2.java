package com.mp.cinepop.store.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mp.cinepop.store.model.OrdersVO;
import com.mp.cinepop.store.model.StoreService;

@Controller
public class StoreController2 {
	Logger logger=LoggerFactory.getLogger(StoreController2.class);
	private final StoreService storeService;

	@Autowired
	public StoreController2(StoreService storeService) {
		super();
		this.storeService = storeService;
	}
	
	@RequestMapping("/mypage/paymentHistory")
	public String paymentHistory(@RequestParam (required = false) String startDate
			,@RequestParam (required = false) String endDate
			,HttpSession session
			,Model model){
		logger.info("결제내역 페이지 startDate={}, endDate={}",startDate,endDate);
		String id=(String)session.getAttribute("userid");
		
		Map<String, String> map=new HashMap<>();
		map.put("id", id);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		
		List<OrdersVO> list=storeService.selectOrdersByID(map);
		
		model.addAttribute("list",list);
		model.addAttribute("startDate",startDate);
		model.addAttribute("endDate",endDate);
		
		return "mypage/paymentHistory";
	}
	
}
