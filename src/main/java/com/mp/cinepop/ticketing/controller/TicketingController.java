package com.mp.cinepop.ticketing.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mp.cinepop.controller.MainController;
import com.mp.cinepop.ticketing.screen_info.model.ScreenInfoViewService;
import com.mp.cinepop.ticketing.screen_info.model.ScreenInfoViewVO;
import com.mp.cinepop.ticketing.seat.model.SeatService;
import com.mp.cinepop.ticketing.seat.model.SeatVO;

@Controller
@RequestMapping("/ticketing")
public class TicketingController {
	private static final Logger logger
	= LoggerFactory.getLogger(MainController.class);
	
	private ScreenInfoViewService sivs;
	private SeatService ss;
	
	@Autowired
	TicketingController(ScreenInfoViewService sivs, SeatService ss){
		this.sivs=sivs;
		this.ss=ss;
	}
	
	@RequestMapping("/ticketing")
	public void ticketing(@RequestParam(required = false) String city, Model model) {
		String[] cityList=sivs.cityList();
		model.addAttribute("cityList", cityList);
		
	}
	
	@ResponseBody
	@RequestMapping("/theaterList")
	public String[] theaterList(@RequestParam String city, Model model) {
		String[] theaterList=sivs.theaterList(city);
		return theaterList;
	}
	
	@ResponseBody
	@RequestMapping("/dateList")
	public String[] dateList(@RequestParam String theater, Model model) {
		String[] dateList=sivs.dateList(theater);
		return dateList;
	}
	
	@ResponseBody
	@RequestMapping("/movieList")
	public List<Map<String, Object>> dateList(@RequestParam String date, @RequestParam String theater, Model model) {
		List<Map<String, Object>> movieList=sivs.movieList(date, theater);
		return movieList;
	}
	
	@RequestMapping("/seat")
	public void seats(@RequestParam int sNo, @RequestParam String time, HttpSession session, Model model) {
		String userid=(String)session.getAttribute("userid");
		//인터셉터
		ScreenInfoViewVO vo=sivs.selectScreenInfo(sNo);
		List<String> seatList=ss.lookUpSeat(sNo);
		model.addAttribute("vo", vo);
		model.addAttribute("seatList", seatList);
	}
	
	@RequestMapping("/payments/complete")
	public String payments_c(HttpSession session, @ModelAttribute SeatVO vo) {
		String userid=(String)session.getAttribute("userid");
		vo.setUserid(userid);
		int cnt=ss.insertSeat(vo);
		return "redirect:/home/home";
	}
	
	@RequestMapping("/chkTicket")
	public void chkTicket(HttpSession session, Model model) {
		String userid=(String)session.getAttribute("userid");
		List<Map<String, Object>> list=ss.chkTicket(userid);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("/chkTD")
	public void chkTD(HttpSession session, Model model, @RequestParam int sTNo) {
		String userid=(String)session.getAttribute("userid");
		Map<String, Object> map=ss.chkTD(userid, sTNo);
		model.addAttribute("map", map);
	}
}
