package com.mp.cinepop.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping("/home/home")
	public void home() {
		logger.info("메인 페이지");
	}

	@RequestMapping("/movie/movieChart")
	public void movie() {
		logger.info("영화목록 페이지"); 
	}

	@RequestMapping("/store/index")
	public void store() {
		logger.info("상품 페이지");
	}
	
	@RequestMapping("/store/giftCard")
	public void giftCard() {
		logger.info("기프트카드 페이지");
	}
	
	@RequestMapping("/store/giftCardDetail")
	public void giftCardDetail() {
		logger.info("상품디테일 페이지");
	}
	
	@RequestMapping("/store/payment")
	public void payment() {
		logger.info("상품결제페이지");
	}
	
	@RequestMapping("/ticketing/ticketing")
	public void ticketing() {
		logger.info("예매 페이지");
	}
	
	@RequestMapping("/event/event_write")
	public void event_write() {
		logger.info("이벤트 글쓰기");
	}
	@RequestMapping("/event/event_list")
	public void event_list() {
		logger.info("이벤트 글쓰기");
	}
	
	@RequestMapping("/qna/qna_list")
	public void qna_list() {
		logger.info("q&a 리스트");
	}
	@RequestMapping("/qna/qna_write")
	public void qna_write() {
		logger.info("q&a 글등록");
	}
	
	@RequestMapping("/qna/qna_detail")
	public void qna_detail() {
		logger.info("q&a 상세");
	}
	
  @RequestMapping("/questions/questions")
   public void questions() {
      logger.info("자주묻는 질문 페이지");
   }
	/*
	 * @RequestMapping("/movie/movieChart") public void index() {
	 * logger.info("메인 페이지"); }
	 */
}
