package com.mp.cinepop.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class MainController {
   private static final Logger logger
      =LoggerFactory.getLogger(MainController.class);
   
   @RequestMapping("/home")
   public void index() {
      logger.info("메인 페이지");
   }
}
