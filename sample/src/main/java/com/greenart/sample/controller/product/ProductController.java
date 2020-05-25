package com.greenart.sample.controller.product;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		public ModelAndView getProductList(
				
				@RequestParam(defaultValue = "1") int num,
				@RequestParam(defaultValue = "productName") String searchOpt,
				@RequestParam(defaultValue = "") String words) {
			
			int pCount = ProductService.getProductCount(searchOpt, words);
			
			int end = 3; // 한 페이지에 보여질 게시물 갯수
			int pageNum = (int)	Math.ceil((double) pCount / end); //페이지 번호 : (ceil)101 /10 - 페이지 11
			//10.1 -> 11.0 -> 11(페이지)
			
			int start = (num - 1) * end ; //0에서 부터 10개 자르기
			
			int pageNum_cnt = 3; //페이지 번호 개수를 10개씩 만 보여지게 한다.
			
			int endPageNum = (int)(Math.ceil((double) num / (double)pageNum_cnt)  * pageNum_cnt);
			
			int startPageNum = endPageNum - (pageNum_cnt - 1 );
			
			int lastPageNum = (int)(Math.ceil((double) pCount / (double)pageNum_cnt));
		
			if(endPageNum > lastPageNum) {
			   endPageNum = lastPageNum;
				
			}
			boolean prev = startPageNum == 1? false : true;
			boolean next = endPageNum * pageNum_cnt >= pCount ? false : true;
			
			
			
			
			List<ProductVO> pList = ProductService.getProductList(start, end, searchOpt, words);
			
			
			ModelAndView mav = new ModelAndView();

			mav.addObject("template","product");
			mav.addObject("mypage","list");
			mav.addObject("pList",pList);//mav.addObject("변수",값);
			mav.addObject("pCount", pCount);// 작성된 게시판 정렬
			mav.addObject("searchOpt", searchOpt);
			mav.addObject("words", words);
			mav.addObject("prev", prev);
			mav.addObject("next", next);
			mav.addObject("pageNum", pageNum);
			mav.addObject("startPageNum",startPageNum);
			mav.addObject("endPageNum", endPageNum);
			mav.addObject("select", num);//현재 선택된 페이지 표시
			mav.addObject("num", num);//페이지 번호
			mav.addObject("end", num);
			
			
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
				String safeFile = path + System.currentTimeMillis() + originFileName;//중복코드 만들지 않기 위해서
				
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
		
		@RequestMapping("setProductDelete")
		public String setProductDelete(@RequestParam int pid){
			ProductVO pvo = ProductService.getProductView(pid);
		
			/* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>알아 두기>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

			if( pvo.getSafeFile() != null ) {
				/*파일 삭제 : substr , subString, StringTokenizer*/
				String filePath = "C:\\Users\\user\\git\\test\\sample\\src\\main\\resources\\static\\images\\product\\"; 
				
				/* new StringTokenizer(값, 구분자) */
				StringTokenizer st = new StringTokenizer(pvo.getSafeFile(), ";");//5개 구분			
				
				File f = null;
				String fileName = null; //filepath + safefile
				while( st.hasMoreTokens() ) {//5번 반복 지금 저장된 사진 만큼 반복	
					//st.nextToken(); 파일이름이 분리
					fileName = filePath + st.nextToken();
					f = new File(fileName);//File 객체를 이용해서 fileName 읽어 오기
					f.delete();
				}
			}
			
			/* DB 내용 삭제*/
			ProductService.setProductDelete(pid);
					
			return "redirect:/product";//location.replace
			
		}
		
		@RequestMapping("/setProductDeleteAll")
		@ResponseBody
		public int setProductDeleteAll(@RequestParam(value = "chkArr[]") List<String> chkArr) {
			//pid 여러개 : 배열, 이미지 token, 배열
			String filePath = "C:\\Users\\user\\git\\test\\sample\\src\\main\\resources\\static\\images\\product\\"; 
			StringTokenizer st = null;	
			int pid = 0;
			
			for(String list : chkArr) {
				pid = Integer.parseInt(list);
				
				//이미지 삭제
				ProductVO pvo = ProductService.getProductView(pid);
				if( pvo.getSafeFile() != null){
					st = new StringTokenizer(pvo.getSafeFile(), ";");
					
					File f = null;
					String fileName  = null;
					while(st.hasMoreTokens() ) {
						fileName = filePath + st.nextToken();
						f = new File(fileName);
						f.delete();
					}
				
				}
				ProductService.setProductDelete(pid);
			
			}
			return 1;
		}
		
		
		@RequestMapping("/getProductView")
		public ModelAndView getProductView(@RequestParam int pid) {
			
			ProductVO pvo = ProductService.getProductView(pid);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "product");
			mav.addObject("mypage", "view");
			mav.addObject("pView", pvo);
		
			mav.setViewName("admin/admin");
			return mav;
			
		}

		
		
}
