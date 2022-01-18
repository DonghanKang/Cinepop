package com.mp.cinepop.accountInsert.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
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

import com.mp.cinepop.accountInsert.model.AccountInsertService;
import com.mp.cinepop.accountInsert.model.AccountInsertVO;
import com.mp.cinepop.common.HashingUtil;
import com.mp.cinepop.hash.model.hashVO;

@Controller
@RequestMapping("/")
public class AccountInsertController {
	private static final Logger logger
	=LoggerFactory.getLogger(AccountInsertController.class);
	
	private final AccountInsertService accountInsertService;
	private final HashingUtil hash;
	
	@Autowired
	public AccountInsertController(AccountInsertService accountInsertService, HashingUtil hash) {
		this.accountInsertService = accountInsertService;
		this.hash = hash;
	}
	
	
	@GetMapping("register/register")
	public void register() {
		logger.info("회원가입화면");
	}
	

	@PostMapping("register/register")
	   public String register_post(@ModelAttribute AccountInsertVO vo, @ModelAttribute hashVO hashvo,@RequestParam String pwd, String yy, String MM, String dd, Model model) throws NoSuchAlgorithmException {
	      logger.info("회원가입 처리 , 파라미터 vo={}",vo);
	      
	   
			/*
			 * if(vo.getId()==null || vo.getId().isEmpty()) { email2=""; email3=""; }else
			 * if(email3!=null && !email3.isEmpty()) { email2=email3; }
			 */
	       
	      int cnt=accountInsertService.insertAccount(vo);
	      
			/* vo.setId(vo.getId()+"@"+ email2); */
	      
	      String salt=hash.makeNewSalt();
	      hashvo.setSalt(salt);
	      
	      String digest =hash.hashing(pwd, salt);
	      hashvo.setDigest(digest);
	      logger.info("pwd : ",pwd);
	      
	      cnt=accountInsertService.insertHash(hashvo);
	      logger.info("회원가입 결과,cnt={}",cnt);
	   
	      return "redirect:/login/login";
	   } 
	
	@GetMapping("mypage/withdrawal")
	public void withdrawal_get() {
		logger.info("회원탈퇴 페이지");
		
	}
	
	
	 @PostMapping("mypage/withdrawal") 
	 public String withdrawal_post(@RequestParam
	 String pwd, @RequestParam String id, @RequestParam String pwd2,
	 HttpSession session,HttpServletResponse response, 
	 Model model) throws NoSuchAlgorithmException, IOException {
			/* id = (String)session.getAttribute("id"); */
	 logger.info("hash 삭제, 파라미터 id={},pwd={}",id,pwd);
	 
	 int result=accountInsertService.loginCheck(id,pwd);
	 if(result==accountInsertService.LOGIN_OK) {
		 
             int cnt =accountInsertService.deleteHash(id);
             int cnt2 =accountInsertService.withdrawAccount(id);
             if(cnt==1 && cnt2==1) {
                session.invalidate();
             }
             return "mypage/withdrawalfin";
		 }else if (result==accountInsertService.DISAGREE_PWD) {
				 response.setContentType("text/html; charset=UTF-8");
				 PrintWriter out = response.getWriter();
				 out.print("<script>");
				 out.print("alert('비밀번호가 일치하지 않습니다.');");
				 out.print("history.back(-1);");
				 out.print("</script>");
				 out.flush();
				 
			 }else {
				 response.setContentType("text/html; charset=UTF-8");
				 PrintWriter out = response.getWriter();
				 out.print("<script>");
				 out.print("alert('비밀번호가 틀렸습니다.');");
				 out.print("history.back(-1);");
				 out.print("</script>");
				 out.flush();
			 }
		 
	 
	 return "mypage/withdrawal";
	 }
	 
	 
}
