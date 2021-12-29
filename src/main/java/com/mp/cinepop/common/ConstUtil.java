package com.mp.cinepop.common;

import java.io.File;

public class ConstUtil {
	//페이징 처리에 필요한 상수
	int RECORD_COUNT=5;  //한페이지에 보여줄 레코드 개수
	int BLOCK_SIZE=10;
	
	//자료실 - 파일 저장 경로
	String STORE_IMAGE_UPLOAD_PATH;
	String MOVIE_IMAGE_UPLOAD_PATH;
	String FILE_UPLOAD_PATH;
	String EVENT_IMAGE_UPLOAD_PATH;
	
	//자료실 업로드인지, 상품 등록시 업로드인지 구분값
	public static final int UPLOAD_STORE_IMAGE_FLAG=1; //상품등록 이미지 업로드
	public static final int UPLOAD_MOVIE_IMAGE_FLAG=2; //상품등록 이미지 업로드
	public static final int UPLOAD_FILE_FLAG=3; //상품 등록시 이미지 업로드
	public static final int UPLOAD_EVENT_IMAGE_FLAG=4; //상품 등록시 이미지 업로드
	
	public ConstUtil() {
		File file=new File("");
		this.STORE_IMAGE_UPLOAD_PATH=file.getAbsolutePath()+"\\src\\main\\webapp\\resources\\images\\store";
		this.MOVIE_IMAGE_UPLOAD_PATH=file.getAbsolutePath()+"\\src\\main\\webapp\\resources\\images\\movie";
		this.FILE_UPLOAD_PATH=file.getAbsolutePath()+"\\src\\main\\webapp\\resources\\up_files";
		this.EVENT_IMAGE_UPLOAD_PATH=file.getAbsolutePath()+"\\src\\main\\webapp\\resources\\images\\event";
	}

	public String getSTORE_IMAGE_UPLOAD_PATH() {
		return STORE_IMAGE_UPLOAD_PATH;
	}

	public String getMOVIE_IMAGE_UPLOAD_PATH() {
		return MOVIE_IMAGE_UPLOAD_PATH;
	}

	public String getFILE_UPLOAD_PATH() {
		return FILE_UPLOAD_PATH;
	}

	public String getEVENT_IMAGE_UPLOAD_PATH() {
		return EVENT_IMAGE_UPLOAD_PATH;
	}

}
