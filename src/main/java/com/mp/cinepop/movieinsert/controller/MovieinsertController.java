package com.mp.cinepop.movieinsert.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mp.cinepop.common.ConstUtil;
import com.mp.cinepop.common.FileUploadUtil;
import com.mp.cinepop.movieinsert.model.MovieinsertService;
import com.mp.cinepop.movieinsert.model.MovieinsertVO;
import com.mp.cinepop.store.controller.StoreController;

@Controller
@RequestMapping("/admin")
public class MovieinsertController {
	Logger logger=LoggerFactory.getLogger(StoreController.class);
	
	private final MovieinsertService movieinsertService;
	private final FileUploadUtil fileUploadUtil;
	
	public MovieinsertController(MovieinsertService movieinsertService, 
				FileUploadUtil fileUploadUtil) {
		this.movieinsertService = movieinsertService;
		this.fileUploadUtil = fileUploadUtil;
		logger.info("MovieinsertService DI - Setter 생성자 주입");
		logger.info("fileUploadUtil 생성자 주입");
	}

	@GetMapping("/insertmovie")
	public void insertmovie() {
		logger.info("영화등록 페이지");
	}
	
	@PostMapping("/insertmovie")
	public String insertmovie_write(@ModelAttribute MovieinsertVO vo,
			HttpServletRequest request) {
		logger.info("영화등록 처리 vo = {}",vo);
		
		String IMAGE1="",IMAGE2="",IMAGE3="";
		int pathFlag = ConstUtil.UPLOAD_MOVIE_IMAGE_FLAG;
		
		try {
			List<Map<String, Object>> fileList
				= fileUploadUtil.fileUpload(request, pathFlag);
			for(int i = 0; i < fileList.size(); i++) {
				Map<String, Object> map = fileList.get(i);
				if(i==0) {
					IMAGE1 = (String) map.get("fileName");
				}else if(i==1) {
					IMAGE2 = (String) map.get("fileName");
				}else if(i==2){
					IMAGE3 = (String) map.get("fileName");
				}
			}
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		vo.setIMAGE1(IMAGE1);
		vo.setIMAGE2(IMAGE2);
		vo.setIMAGE3(IMAGE3);
		
		int cnt = movieinsertService.insertMovie(vo);
		logger.info("영화등록 처리결과 cnt = {}",cnt);
		
		return "/movie/movieChart";
	}
}
