package com.mp.cinepop.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mp.cinepop.controller.MainController;

@Controller
@RequestMapping("/admin")
public class AdminPageController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping("/adminmenu")
	public void store() {
		logger.info("상품 페이지");
	}
}
