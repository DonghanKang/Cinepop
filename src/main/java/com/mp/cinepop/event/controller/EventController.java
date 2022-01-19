package com.mp.cinepop.event.controller;


import java.io.File;
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
	
	
	@GetMapping("event/event_write")
	public void event_get() {
		logger.info("이벤트 글쓰기");
	}
	

	@PostMapping("event/event_write")
	public String event_post(@ModelAttribute  EventVO vo, HttpServletRequest request) {
		logger.info("이벤트 게시판 등록 처리, 파라미터 vo={}",vo);
		
		//파일 업로드 처리
		String fileName="", originName="";
		long fileSize=0;
		int pathFlag=ConstUtil.UPLOAD_EVENT_IMAGE_FLAG;
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
		return "redirect:/event/event_list";
	}
	
	@RequestMapping("event/event_list")
	public String event_list(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("글목록, 파라미터 searchVo={}",searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(10);
		pagingInfo.setRecordCountPerPage(6);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setRecordCountPerPage(6);
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
	
	@GetMapping("event/event_Detail")
	public String event_detail(@RequestParam(defaultValue = "0")int no, Model model) {
		logger.info("이벤트 상세보기 파라미터 no={}",no);
		
		
		EventVO vo=eventservice.selectByNo(no);
		
		model.addAttribute("vo",vo);
		
		return "event/event_Detail";
	}
	
	@PostMapping("event/event_Detail")
	public String event_detail_delete(@ModelAttribute EventVO vo, Model model) {
		logger.info("이벤트 게시판 삭제");
		int cnt=eventservice.deleteEvent(vo.getNo());
		
		model.addAttribute("삭제 처리 cnt={}",cnt);
		
		return"redirect:/event/event_list";
	}
	
	@GetMapping("admin/event/event_edit")
	public String event_edit_get(@RequestParam (defaultValue = "0") int no, HttpServletRequest request,Model model) {
		logger.info("수정화면 no={}",no);
		
		EventVO vo=eventservice.selectByNo(no);
		logger.info("수정화면, 조회 결과 vo={}",vo);
		
		String fileInfo = fileUploadUtil.getFileInfo(vo.getOriginalFileName(), vo.getFileSize(), request);
		
		model.addAttribute("vo",vo);
		model.addAttribute("fileInfo",fileInfo);
		
		return "admin/event/event_edit";
	}
	@PostMapping("admin/event/event_edit")
	public String event_edit_post(@ModelAttribute EventVO vo, 
			@RequestParam String oldFileName,
			HttpServletRequest request, Model model) {
			logger.info("글수정 처리, 파라미터 vo={},oldFileName={}",vo,oldFileName);
			//업로드 처리
			String fileName="";
		
			try {
				List<Map<String, Object>> fileList
				= fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_EVENT_IMAGE_FLAG);
				
				for(Map<String, Object> fileMap : fileList) {
					fileName=(String)fileMap.get("fileName");
					vo.setFileName(fileName);
					vo.setOriginalFileName((String)fileMap.get("originalFileName"));
					vo.setFileSize((Long)fileMap.get("fileSize"));
				}//for
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		int cnt=eventservice.updateEvent(vo);
		if(cnt>0) {
			
			if(fileName!=null && !fileName.isEmpty()
					&& oldFileName !=null && !oldFileName.isEmpty()) {
				String upPath 
				= fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_FILE_FLAG, request);
				File oldFile = new File(upPath,oldFileName);
				if(oldFile.exists()) {
					boolean bool = oldFile.delete();
					logger.info("글수정, 파일삭제여부:{}",bool);
				}
			}
		}else {
		}
		
		model.addAttribute("vo",vo);
		
		return "/event/event_list";
	} 
}
