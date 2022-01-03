package com.mp.cinepop.account.controller;

import java.security.NoSuchAlgorithmException;

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

import com.mp.cinepop.account.model.AccountService;
import com.mp.cinepop.account.model.AccountVO;
import com.mp.cinepop.common.HashingUtil;
import com.mp.cinepop.hash.model.hashVO;

@Controller
@RequestMapping("/")
public class AccountController {
	private static final Logger logger
	=LoggerFactory.getLogger(AccountController.class);
	
	private final AccountService accountService;
	private final HashingUtil hash;
	
	@Autowired
	public AccountController(AccountService accountService, HashingUtil hash) {
		this.accountService = accountService;
		this.hash = hash;
	}
	
	
	@GetMapping("register/register")
	public void register() {
		logger.info("회원가입화면");
	}
	

	@PostMapping("register/register")
	public String register_post(@ModelAttribute AccountVO vo, @ModelAttribute hashVO hashvo,@RequestParam String email2,String email3,String pwd, String yy, String MM, String dd, Model model) throws NoSuchAlgorithmException {
		logger.info("회원가입 처리 , 파라미터 vo={}",vo);
		
	
		 if(vo.getId()==null || vo.getId().isEmpty()) { email2=""; email3=""; }else
		 if(email3!=null && !email3.isEmpty()) { email2=email3; }
		 
		int cnt=accountService.insertAccount(vo);
		
		vo.setId(vo.getId()+"@"+ email2);
		
		String salt=hash.makeNewSalt();
		hashvo.setSalt(salt);
		
		String digest =hash.hashing(pwd, salt);
		hashvo.setDigest(digest);
		logger.info("해시처리 : ",hashvo.toString());
		logger.info("pwd : ",pwd);
		
		cnt=accountService.insertPw(hashvo);
		logger.info("회원가입 결과,cnt={}",cnt);
	
		return "redirect:/login/login";
	} 
}
