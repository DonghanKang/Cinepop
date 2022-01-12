package com.mp.cinepop.account.controller;

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

import com.mp.cinepop.account.model.AccountService;
import com.mp.cinepop.account.model.AccountVO;
import com.mp.cinepop.qna.controller.QnaController;

@Controller
@RequestMapping("/")
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);

	private final AccountService accountService;

	@Autowired
	public AccountController(AccountService accountService) {
		this.accountService = accountService;
		logger.info("AccountController생성자 주입!!");
	}

	@GetMapping("mypage/accountDetail")
	public String accountDetail(HttpSession session, Model model) {
		String userid = (String) session.getAttribute("userid");
		logger.info("회원정보 조회 화면, 파라미터 userid={}", userid);

		AccountVO vo = accountService.selectByUserid(userid);
		logger.info("회원 조회 결과 vo={}", vo);

		model.addAttribute("vo", vo);
		return "mypage/accountDetail";
	}

	@GetMapping("mypage/editInfo")
	public String accountEdit_get(HttpSession session, Model model) {
		String userid = (String) session.getAttribute("userid");
		logger.info("회원정보 수정 화면, 파라미터 userid={}", userid);

		AccountVO vo = accountService.selectByUserid(userid);
		logger.info("회원수정 - 조회 결과 vo={}", vo);

		model.addAttribute("vo", vo);
		return "mypage/editInfo";
	}

	@PostMapping("mypage/editInfo")
	public String edit_post(@ModelAttribute AccountVO vo, 
			@RequestParam(value = "id", required = false) String id,
			@RequestParam(value = "pw1", required = false) String pw1,
			@RequestParam(value = "postcode1", required = false) String postcode1,
			@RequestParam(value = "address", required = false) String address,
			@RequestParam(value = "detailAddress1", required = false) String detailAddress1,
			@RequestParam(value = "tel", required = false) String tel,
			HttpSession session, Model model) {	
		id = (String) session.getAttribute("userid");
		vo = accountService.selectByUserid(id);
		logger.info("회원수정 처리, 파라미터 vo={}", vo);

		String msg = "회원정보 수정 실패!", url = "/mypage/editInfo";
		
		vo.setPwd(pw1);
		vo.setPostcode1(postcode1);
		vo.setAddress(address);
		vo.setDetailAddress1(detailAddress1);
		vo.setTel(tel);
		
		int cnt = accountService.updateAccount(vo);
		logger.info("회원수정 결과, cnt={}", cnt);

		if (cnt > 0) {
			msg = "회원정보 수정되었습니다.";
		} else {
			msg = "회원정보 수정 실패!";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "redirect:/mypage/accountDetail";
	}

}
