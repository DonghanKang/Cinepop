package com.mp.cinepop.event.controller;


import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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

import com.mp.cinepop.common.ConstUtil;
import com.mp.cinepop.common.FileUploadUtil;
import com.mp.cinepop.common.PaginationInfo;
import com.mp.cinepop.common.SearchVO;
import com.mp.cinepop.event.model.EventService;
import com.mp.cinepop.event.model.EventVO;
@Controller
@RequestMapping("/")
public class EventController {
	private static final Logger logger
	=LoggerFactory.getLogger(EventController.class);
	
	private final EventService eventservice;
	private final FileUploadUtil fileUploadUtil;
	
	@Autowired
	public EventController(EventService eventservice, FileUploadUtil fileUploadUtil) {
		super();
		this.eventservice = eventservice;
		this.fileUploadUtil = fileUploadUtil;
	}
	
	
	@GetMapping("/event/event_write")
	public String event_get() {
		logger.info("이벤트 글쓰기");
		
		return "event/event_write";
	}
	

	@PostMapping("/event/event_write")
	public String event_post(@ModelAttribute  EventVO vo, HttpServletRequest request) {
		logger.info("이벤트 게시판 등록 처리, 파라미터 vo={}",vo);
		
		//파일 업로드 처리
		String fileName="", originName="";
		long fileSize=0;
		int pathFlag=ConstUtil.UPLOAD_FILE_FLAG;
		try {
			List<Map<String, Object>> fileList
			=fileUploadUtil.fileUpload(request, pathFlag);
			for(Map<String, Object> map : fileList) {
				
				fileName=(String) map.get("fileName");
				originName=(String) map.get("originalFileName");
				fileSize=(long) map.get("fileSize");
				
			}//for
			logger.info("파일 업로드 성공, fileName={}",fileName);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setFileName(fileName);
		vo.setOriginalFileName(originName);
		vo.setFileSize(fileSize);
		
		int cnt=eventservice.insertEvent(vo);
		
		logger.info("글쓰기 결과 cnt={}",cnt);
		logger.info("업로드 경로 : {}", pathFlag);
		return "event/event_write";
	}
	
	@RequestMapping("event/event_list")
	public String event_list(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("글목록, 파라미터 searchVo={}",searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 seachVo={}",searchVo);
		
		List<EventVO> list=eventservice.selectAll(searchVo);
		logger.info("전체조회 결과 list.size={}",list.size());

		int totalRecord=eventservice.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);
		
		return "event/event_list";
		
	}
	@RequestMapping("event/event_Detail")
	public String event_detail(@RequestParam(defaultValue = "0")int no, Model model) {
		logger.info("이벤트 상세보기 파라미터 no={}",no);
		
		
		EventVO vo=eventservice.selectByNo(no);
		
		model.addAttribute("vo",vo);
		
		return "event/event_Detail";
	}
}
