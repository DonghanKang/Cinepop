package com.mp.cinepop.store.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mp.cinepop.store.model.StoreService;
import com.mp.cinepop.store.model.StoreVO;

@Controller
@RequestMapping("/store")
public class StoreController {
	Logger logger=LoggerFactory.getLogger(StoreController.class);
	
	private StoreService storeService;
	
	@Autowired
	public StoreController(StoreService storeService) {
		super();
		this.storeService = storeService;
	}
	
	//등록, 수정
	@GetMapping("/pdWrite")
	public String pdWrite_get(@RequestParam(defaultValue = "0") int pdNo, Model model) {
		logger.info("상품등록 페이지, 파라미터 pdNo={}",pdNo);
		
		if(pdNo!=0) {
			StoreVO storeVo=storeService.selectByPdNo(pdNo);
			model.addAttribute("storeVo",storeVo);
		}
		
		return "store/pdWrite";
	}
	
	@PostMapping("/pdWrite")
	public String pdWrite_post(@ModelAttribute StoreVO storeVo) {
		logger.info("상품등록 처리, 파라미터 StoreVO={}",storeVo );
		
		if(storeVo.getPdNo()==0) {
			int cnt=storeService.insertPd(storeVo);
			logger.info("등록함");
		}else {
			int cnt=storeService.updatePd(storeVo);
			logger.info("수정함");
		}
		
		return "store/pdList";
	}
	
	
}
