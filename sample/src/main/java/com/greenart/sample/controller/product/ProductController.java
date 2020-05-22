package com.greenart.sample.controller.product;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.ProductVO;
import com.greenart.sample.service.product.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	
		@Autowired ProductService ProductService;
	
	
		@RequestMapping("")
		public ModelAndView getProductList() {
			List<ProductVO> pList = ProductService.getProductList();
			
			ModelAndView mav = new ModelAndView();

			mav.addObject("template","product");
			mav.addObject("mypage","list");
			mav.addObject("pList",pList);//mav.addObject("변수",값);
			
			
			mav.setViewName("admin/admin");
			
			return  mav;
		}
		//보여주는 역활
		@RequestMapping(value = "/setProduct", method = RequestMethod.GET)
		public ModelAndView getProduct() {
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("template","product");
			mav.addObject("mypage","insert");
			
			mav.setViewName("admin/admin");
			return mav;
		}
		
		//저장 하는 역활
		@RequestMapping(value = "/setProduct", method = RequestMethod.POST)
		public ModelAndView setProduct(@ModelAttribute ProductVO pvo, MultipartHttpServletRequest mhsr) {
			
			//pom.xml에 commons dependency(의존성) 추가 되어 있는지 확인하기
			List<MultipartFile> fileList = mhsr.getFiles("product-img");
			
			//저장 위치는(절대 경로 C: D:) 로 저장한다. :컴퓨터 위치에 따라 저장 위치 확인 - 저장 - product 폴더에 F5 새로고침 한번 하기
			String path = "C:\\Users\\user\\git\\test\\sample\\src\\main\\resources\\static\\images\\product\\";
			
			//한 공간에 + 파일 이름 변경
			String originFileName_tmp = "";
			String fileSize_tmp = "";
			String safeFile_tmp = "";
			
			for( MultipartFile mf : fileList) {
				//mf[0];mf[1];mf[2];mf[3];
				//실제 업로드 폴더에 저장
				String originFileName = mf.getOriginalFilename(); //원본
				long fileSize = mf.getSize(); //크기 -> 가장 큰 long 타입을 사용한다.
				String safeFile = path + System.currentTimeMillis() + originFileName+";";//중복코드 만들지 않기 위해서
				
				//db에 저장
				originFileName_tmp += originFileName +";";// 파일들을 잘라 주는 부분 
				fileSize_tmp += fileSize +";";
				safeFile_tmp += System.currentTimeMillis() + originFileName+";";//중복코드 만들지 않기 위해서
				
				try {
					mf.transferTo(new File(safeFile));
				} catch (IllegalStateException | IOException e) {
					
					e.printStackTrace();
				}
			}
			
			pvo.setOriginFileName(originFileName_tmp);
			pvo.setFileSize(fileSize_tmp);
			pvo.setSafeFile(safeFile_tmp);
			
			ProductService.setProduct(pvo);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("tamplate","product");
			mav.addObject("mypage","list");
			mav.setViewName("redirect:/product");
			
			
			return mav;
		}
		
		

}
