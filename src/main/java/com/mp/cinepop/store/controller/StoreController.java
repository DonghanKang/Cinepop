package com.mp.cinepop.store.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.mp.cinepop.common.ConstUtil;
import com.mp.cinepop.common.FileUploadUtil;
import com.mp.cinepop.store.model.CartVO;
import com.mp.cinepop.store.model.OrdersVO;
import com.mp.cinepop.store.model.StoreService;
import com.mp.cinepop.store.model.StoreVO;

@Controller
@RequestMapping("/store")
public class StoreController {
	Logger logger=LoggerFactory.getLogger(StoreController.class);
	private final StoreService storeService;
	private final FileUploadUtil fileUploadUtil;

	@Autowired
	public StoreController(StoreService storeService, FileUploadUtil fileUploadUtil) {
		super();
		this.storeService = storeService;
		this.fileUploadUtil = fileUploadUtil;
	}

	//등록, 수정
	@GetMapping("/pdWrite")
	public String pdWrite_get(@RequestParam(defaultValue = "0") int pdNo, Model model) {
		logger.info("상품등록 페이지, 파라미터 pdNo={}",pdNo);

		if(pdNo!=0) {
			StoreVO storeVo=storeService.selectByPdNo(pdNo);
			model.addAttribute("storeVo",storeVo);
		}

		return "store/pdWrite";
	}

	@PostMapping("/pdWrite")
	public String pdWrite_post(@ModelAttribute StoreVO storeVo, 
			HttpServletRequest request) {
		logger.info("상품 등록, 수정 처리, 파라미터 StoreVO={}",storeVo );

		String pdImagename="";
		long pdImagefilesize=0;
		int pathFlag=ConstUtil.UPLOAD_STORE_IMAGE_FLAG;

		if(storeVo.getPdNo()==0) {
			//파일 업로드 처리
			try {
				//Store의 상품이미지는 하나지만 영화게시판의 
				//이미지는 여러개이므로 FileUpload 메서드의 반환형을 List로 함
				List<Map<String, Object>> fileList 
				= fileUploadUtil.fileUpload(request, pathFlag);

				if(fileList.size()>0) {
					Map<String, Object> map=fileList.get(0);

					pdImagename=(String) map.get("fileName");
					pdImagefilesize=(long) map.get("fileSize");				 

					logger.info("파일 업로드 성공, pdImagename={}", pdImagename);
				}
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			//2
			storeVo.setPdImagename(pdImagename);
			storeVo.setPdImagefilesize(pdImagefilesize);

			int cnt=storeService.insertPd(storeVo);
			logger.info("DB등록여부 cnt={}",cnt);
		}else {
			StoreVO oldVo=storeService.selectByPdNo(storeVo.getPdNo());
			String upPath=fileUploadUtil.getUploadPath(pathFlag, request);

			//새 파일 업로드
			try {
				//Store의 상품이미지는 하나지만 영화게시판의 
				//이미지는 여러개이므로 FileUploadUtil의 반환형을 List로 함
				List<Map<String,Object>> fileList=fileUploadUtil.fileUpload(request, pathFlag);
				if(fileList.size()>0) {
					Map<String,Object> map=fileList.get(0);

					pdImagename=(String)map.get("fileName");
					pdImagefilesize=(long)map.get("fileSize");

					logger.info("새 파일 업로드 성공, pdImagename={}", pdImagename);

					if(oldVo.getPdImagename()!=null && !oldVo.getPdImagename().isEmpty()) {
						File oldFile=new File(upPath, oldVo.getPdImagename());

						if(oldFile.exists()) {
							boolean bool=oldFile.delete();
							logger.info("기존 파일 삭제 여부={}",bool);
						}
					}
				}
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}

			//기존 파일 삭제

			storeVo.setPdImagename(pdImagename);
			storeVo.setPdImagefilesize(pdImagefilesize);


			int cnt=storeService.updatePd(storeVo);
			logger.info("DB수정여부 cnt={}",cnt);
		}

		return "store/pdList";
	}


	@RequestMapping("/pdList")
	public String pdList(@RequestParam String pctNo, Model model) {
		logger.info("카테고리별 상품리스트 페이지 파라미터 pctNo={}",pctNo);

		List<StoreVO> list=storeService.selectByCategory(pctNo);

		logger.info("list.size()={}",list.size());
		model.addAttribute("list",list);
		model.addAttribute("pctNo",pctNo);

		return "store/pdList";
	}

	@GetMapping("/pdDetail")
	public String pdDetail(@RequestParam (defaultValue = "0") int pdNo, Model model) {
		logger.info("상품디테일 페이지 파라미터 pdNo={}",pdNo);

		StoreVO storeVo=storeService.selectByPdNo(pdNo);
		String pctName=storeService.getCategoryName(storeVo.getPctNo());

		logger.info("storeVo={}",storeVo);

		model.addAttribute("storeVo",storeVo);
		model.addAttribute("pctName",pctName);

		return "store/pdDetail";
	}

	@PostMapping("/payment")
	public String payment(@ModelAttribute CartVO cartVo
			,Model model, HttpServletRequest request) {
		logger.info("결제처리 cartVo={}",cartVo);

		List<Map<String, Object>> list=new ArrayList<>();
		HttpSession session=request.getSession();

		if(cartVo.getPdNo()==0) { //장바구니를 통해 들어오면
			String id=(String)session.getAttribute("userid");
			list=storeService.selectCartByID(id);
		}else { //바로구매를 통해 들어오면
			StoreVO storeVo=storeService.selectByPdNo(cartVo.getPdNo());
			logger.info("storeVo={}",storeVo);

			Map<String, Object> map=new HashMap<String, Object>();

			map.put("PD_NO",cartVo.getPdNo());
			map.put("QUANTITY",cartVo.getQuantity());
			map.put("PD_PRICE",storeVo.getPdPrice()); 
			map.put("PD_NAME",storeVo.getPdName());
			map.put("PD_IMAGENAME", storeVo.getPdImagename());

			list.add(map);
		}

		model.addAttribute("list",list);

		return "store/payment";
	}

	@GetMapping("/pdDelete")
	public String pdDelete() {
		logger.info("상품삭제 페이지");

		return "store/pdDelete";
	}

	@PostMapping("/pdDelete")
	public String pdDelete(@RequestParam (defaultValue = "0") int pdNo,
			HttpServletRequest request) {
		logger.info("상품삭제 처리 파라미터 pdNo={}",pdNo);

		StoreVO storeVo=storeService.selectByPdNo(pdNo);
		String fileName=storeVo.getPdImagename();

		int cnt=storeService.deleteByPdNo(pdNo);
		logger.info("파일삭제여부 cnt={}",cnt);

		if(cnt>0 && fileName!=null && !fileName.isEmpty() ) {
			String upPath
			=fileUploadUtil.getUploadPath(ConstUtil.UPLOAD_STORE_IMAGE_FLAG, request);

			File oldFile=new File(upPath,fileName);
			if(oldFile.exists()) {
				boolean bool=oldFile.delete();
				logger.info("파일삭제 여부 :{}",bool);
			}
		}

		return "redirect:/store/index";
	}

	@PostMapping("/paymentDataInput")
	@ResponseBody
	public String paymentDataInput(@RequestParam(value="totalPrice")int totalPrice
			,@RequestParam(value="pdNoList")int[] pdNoList
			,@RequestParam(value="quantityList") int[] quantityList
			,HttpSession session) {
		logger.info("결제정보 DB처리, totalPrice={}, pdNoList={}, quantityList={}",totalPrice, pdNoList,quantityList);
		
		OrdersVO ordersVo=new OrdersVO();
		String id=(String)session.getAttribute("userid");
		ordersVo.setId(id);
		ordersVo.setTotalPrice(totalPrice);
		
		List<CartVO> list=new ArrayList<>();
		CartVO cartVo=new CartVO();
		
		for(int i=0;i<pdNoList.length;i++) {
			int pdNo=pdNoList[i];
			int quantity=quantityList[i];
			
			cartVo.setPdNo(pdNo);
			cartVo.setQuantity(quantity);
			
			list.add(cartVo);
		}
		
		int cnt=storeService.insertOrders(ordersVo, list);
		
		String res="DB작업완료, 확인요망";
		return res;
	}

	@RequestMapping("/paymentSuccess")
	public void paymentSuccess() {
		
	}
}
