package com.example.site.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.site.model.BoardVO;
import com.example.site.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardService;

	@RequestMapping("/list")
	public ModelAndView viewList(@RequestParam(defaultValue = "subject") String searchOpt,
			@RequestParam(defaultValue = "") String words) {
		List<BoardVO> vList = boardService.getArtcleList(searchOpt, words);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vList", vList);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.setViewName("/board/list");

		return mav;
	}

	@RequestMapping("/add")
	public String viewAdd() {
		return "/board/add";
	}

	@RequestMapping("/doAdd")
	@ResponseBody
	public String doAdd(@ModelAttribute BoardVO bvo, @RequestPart MultipartFile files)
			throws IllegalStateException, IOException {
		// 첨부파일 처리
		int result;

		if (files.isEmpty()) {
			result = boardService.setArticle(bvo);
		} else {
			// 첨부파일 저장 되는 위치
			String fileUrl = "C:/upload/";

			// 파일 이름 변경
			String fileName = files.getOriginalFilename();
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();

			File destinationFile = null;
			String destinationFileName;

			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile = new File(fileUrl + destinationFileName);

			} while (destinationFile.exists());

			destinationFile.getParentFile().mkdirs();
			files.transferTo(destinationFile);

			bvo.setFilename(destinationFileName);
			bvo.setFileOriName(fileName);
			bvo.setFileurl(fileUrl);

			result = boardService.setArticle(bvo);
		}

		StringBuilder sb = null;
		String msg = "게시물이 등록 되었습니다.";

		if (result > 0) {
			sb = new StringBuilder();
			sb.append("<script>");
			sb.append("alert('" + msg + "');");
			sb.append("location.replace('/board/list');");
			sb.append("</script>");

		}
		return sb.toString();

	}

	@RequestMapping("/detail") // url 주소
	public ModelAndView viewDetail(@RequestParam int id) {
		boardService.setHitUp(id);
		BoardVO vo = boardService.getArticlOne(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("view", vo);
		mav.setViewName("/board/detail");
		return mav;// jsp주소-> 지금 보는 화면
	}

	@RequestMapping("/modify")
	public ModelAndView Modify(@RequestParam int id) {

		BoardVO vo = boardService.getArticlOne(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("bvo", vo);
		mav.setViewName("/board/modify");
		return mav;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public String deleteBoard(@RequestParam int id) {

		int result = boardService.deleteboard(id);

		StringBuilder sb = null;
		String msg = "게시물이 삭제 되었습니다.";

		if (result > 0) {
			sb = new StringBuilder();
			sb.append("<script>");
			sb.append("alert('" + msg + "');");
			sb.append("location.replace('/board/list');");
			sb.append("</script>");
		}

		return sb.toString();
	}

	@RequestMapping("/update")
	@ResponseBody
	public String bupdate(BoardVO vo) {
		int result = boardService.bupdate(vo);
		StringBuilder sb = new StringBuilder();
		sb.append("<script>");

		if (result > 0) {
			sb.append("alert('회원정보가 수정 되었습니다.');");
			sb.append("location.replace('/board/detail?id=" + vo.getId() + "');");

		} else {
			sb.append("alert('회원정보가 수정 되지 않았습니다.');");
			sb.append("location.replace('/board/list');");
		}

		sb.append("</script>");

		return sb.toString();
	}

	@RequestMapping("/fileDown")
	public void fileDown(int id, HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		BoardVO bvo = boardService.getArticlOne(id);

		try {

			String fileUrl = bvo.getFileurl();
			String fileName = bvo.getFilename();
			String oriFileName = bvo.getFilename();
			String savePath = fileUrl;

			InputStream in = null;
			OutputStream os = null;
			File file = null;
			boolean skip = false;
			String client = "";

			// 파일을 읽어 스트림에 담기
			try {
				file = new File(savePath, fileName);
				in = new FileInputStream(file);
			} catch (FileNotFoundException fe) {
				skip = true;
			}

			client = request.getHeader("User-Agent");

			// 파일 다운로드 헤더 지정
			response.reset();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Description", "JSP Generated Data");

			if (!skip) {
				// IE
				if (client.indexOf("MSIE") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
					// IE 11 이상.
				} else if (client.indexOf("Trident") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
				} else {
					// 한글 파일명 처리
					response.setHeader("Content-Disposition",
							"attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
					response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
				}
				response.setHeader("Content-Length", "" + file.length());
				os = response.getOutputStream();
				byte b[] = new byte[(int) file.length()];
				int leng = 0;
				while ((leng = in.read(b)) > 0) {
					os.write(b, 0, leng);
				}
			} else {
				response.setContentType("text/html;charset=UTF-8");
				System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
			}
			in.close();
			os.close();

			// db 다운로드 파일 주소

		} catch (Exception e) {
			System.out.println("ERROR : " + e.getMessage());
		}

	}

}
