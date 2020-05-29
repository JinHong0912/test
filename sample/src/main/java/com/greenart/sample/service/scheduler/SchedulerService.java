package com.greenart.sample.service.scheduler;

import java.util.List;

import com.greenart.sample.model.ScheduleVO;

public interface SchedulerService {

	public void setScheduler(ScheduleVO svo);
	
	public List<ScheduleVO> getScheduler(ScheduleVO svo);


}
