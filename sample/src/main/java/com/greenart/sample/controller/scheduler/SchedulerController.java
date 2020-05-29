package com.greenart.sample.controller.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.sample.model.JSONResult;
import com.greenart.sample.model.ScheduleVO;
import com.greenart.sample.service.scheduler.SchedulerService;

@Controller
public class SchedulerController {
	
		@Autowired SchedulerService sService;
	
	@RequestMapping("/scheduler")
	public ModelAndView getScheduler() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("template","scheduler");
		mav.addObject("mypage","view");
		mav.setViewName("admin/admin");
		
		return mav;
		
	}
	
	@RequestMapping("/scheduler/setScheduler")
	@ResponseBody
	public JSONResult setScheduler(@ModelAttribute ScheduleVO svo) {
		
		int result = 0;
		if( svo != null ) {
			sService.setScheduler(svo);
			 result = 1;
			
		}
			
		return JSONResult.success(result);
	}
	
	@RequestMapping("/scheduler/getScheduler")
	@ResponseBody
	public JSONResult getScheduler(@ModelAttribute ScheduleVO svo) {
		 
		List<ScheduleVO> list = sService.getScheduler(svo);
	
		return JSONResult.success(list);
	}
	
}