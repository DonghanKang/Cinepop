package com.mp.cinepop.store.controller;



import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.ModelAndView;

import com.mp.cinepop.common.PaginationInfo;
import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.store.model.OrdersVO;
import com.mp.cinepop.store.model.StoreService;
import com.mp.cinepop.store.model.StoreVO;

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
	public String paymentHistory(@ModelAttribute SearchVO searchVo
			,HttpSession session
			,Model model){
		logger.info("결제내역 페이지 startDate={}, endDate={}, currentPage={}",searchVo.getStartDate(),searchVo.getEndDate(),
				searchVo.getCurrentPage());
		String id=(String)session.getAttribute("userid");
		
		int blockSize=5;
		int recordCount=5;
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(blockSize);
		pagingInfo.setRecordCountPerPage(recordCount);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		logger.info("pagingInfo={}",pagingInfo);
		
		searchVo.setId(id);
		searchVo.setBlockSize(blockSize);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		int totalRecord=storeService.getTotalRecord(searchVo);
		logger.info("searchVo={}",searchVo);
		
		List<OrdersVO> list=storeService.selectOrdersByID(searchVo);
		
		pagingInfo.setTotalRecord(totalRecord);
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);
		
		return "mypage/paymentHistory";
	}
	
	@RequestMapping("/mypage/paymentDetail")
	public String paymentDetail(@ModelAttribute OrdersVO ordersVo
				,Model model) {
		logger.info("결제상세페이지, ordersVo={}",ordersVo);
		
		List<Map<String, Object>> list=storeService.selectOrderDetail(ordersVo.getOrderNo());
		
		model.addAttribute("orderVo",ordersVo);
		model.addAttribute("list",list);
		
		return "mypage/paymentDetail";
	}
	
	@RequestMapping("/mypage/showQr")
	public String showQr() {
		logger.info("QR보여주기");
		
		return "mypage/showQr";
	}
	
	@GetMapping("/mypage/writePdReview")
	public String writePdReview(@RequestParam int pdNo
			, Model model) {
		logger.info("상품평작성페이지 pdNo={},orderNo={}",pdNo);
		
		StoreVO storeVo=storeService.selectByPdNo(pdNo);
		
		model.addAttribute("storeVo",storeVo);
		return "mypage/writePdReview";
	}
	
	@PostMapping("/mypage/writePdReview")
	public ModelAndView writePdReview(@RequestParam Map<String, Object> paramMap) {
		logger.info("상품 리뷰 쓰기 요청 paramMap={}",paramMap);
		String str=(String)paramMap.get("review");
		paramMap.put("review", ((String)paramMap.get("review")).replace("\r\n", "<br>"));
		
		storeService.insertPdReview(paramMap);
		
		ModelAndView mav=new ModelAndView("/mypage/writePdReview");
		
		String afterSubmit="opener.document.location.reload(); self.close();";
		mav.addObject("afterSubmit", afterSubmit);
		
		return mav;
	}
}
