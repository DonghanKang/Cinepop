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

	@RequestMapping("/store/giftCard")
	public void store() {
		logger.info("상품 페이지");
	}
	/*
	 * @RequestMapping("/movie/movieChart") public void index() {
	 * logger.info("메인 페이지"); }
	 */
}
