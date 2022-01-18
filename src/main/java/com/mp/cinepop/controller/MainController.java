package com.mp.cinepop.controller;

import java.util.List;

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

import com.mp.cinepop.common.FileUploadUtil;
import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.event.model.EventService;
import com.mp.cinepop.event.model.EventVO;
import com.mp.cinepop.store.model.StoreService;
import com.mp.cinepop.store.model.StoreVO;

@Controller
@RequestMapping("/")
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	private final StoreService storeService;
	private final EventService eventService;
	
	@Autowired
	public MainController(StoreService storeService, EventService eventService) {
		this.storeService = storeService;
		this.eventService = eventService;
	}

	@GetMapping("/home/home")
	public void main(@ModelAttribute EventVO eventvo, Model model) {
		logger.info("메인 페이지");
		
//		상품리스트
		List<StoreVO> listA01=storeService.selectFourByCategory("A01");
		List<StoreVO> listB01=storeService.selectFourByCategory("B01");
		List<StoreVO> listB02=storeService.selectFourByCategory("B02");
		List<StoreVO> listB03=storeService.selectFourByCategory("B03");
		
		model.addAttribute("listA01",listA01);
		model.addAttribute("listB01",listB01);
		model.addAttribute("listB02",listB02);
		model.addAttribute("listB03",listB03);
		
		
		//이벤트 게시판 리스트
		logger.info("eventvo ={}",eventvo);
		List<EventVO> listEvent=eventService.selectAll2(eventvo);
		model.addAttribute("listEvent", listEvent);
	}

	@RequestMapping("/store/index")
	public void store() {
		logger.info("상품 페이지");
	}
	
	/*
	 * @RequestMapping("/ticketing/ticketing") public void ticketing() {
	 * logger.info("예매 페이지"); }
	 */
	/*
	 * @RequestMapping("/event/event_write") public void event_write() {
	 * logger.info("이벤트 글쓰기"); }
	 * 
	 * @RequestMapping("/event/event_list") public void event_list() {
	 * logger.info("이벤트 글쓰기"); }
	 */
	/*
	 * @RequestMapping("/qna/qna_list") public void qna_list() {
	 * logger.info("q&a 리스트"); }
	 * 
	 * @RequestMapping("/qna/qna_write") public void qna_write() {
	 * logger.info("q&a 글등록"); }
	 * 
	 * @RequestMapping("/qna/qna_detail") public void qna_detail() {
	 * logger.info("q&a 상세"); }
	 */
	
  @RequestMapping("/questions/questions")
   public void questions() {
      logger.info("자주묻는 질문 페이지");
   }
  @RequestMapping("/mypage/mypageMain")
  public void mypageMain() {
	  logger.info("mypageMain 페이지");
  }
  @RequestMapping("/mypage/editInfo")
  public void editInfo() {
	  logger.info("editInfo 페이지");
  }
  @RequestMapping("/mypage/accountDetail")
  public void accountDetail() {
	  logger.info("accountDetail 페이지");
  }
  @RequestMapping("/mypage/coupon")
  public void coupon() {
	  logger.info("coupon 페이지");
  }
  @RequestMapping("/mypage/withdrawal")
  public void withdrawal() {
	  logger.info("withdrawal 페이지");
  }

  
  @RequestMapping("/login/login")
  public void login() {
	  logger.info("login 페이지");
  }
 
	/*
	 * @RequestMapping("/movie/movieChart") public void index() {
	 * logger.info("메인 페이지"); }
	 */

}
