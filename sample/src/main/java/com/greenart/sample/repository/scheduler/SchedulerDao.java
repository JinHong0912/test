package com.greenart.sample.repository.scheduler;

import java.util.List;

import com.greenart.sample.model.ScheduleVO;

public interface SchedulerDao {

	public void setScheduler(ScheduleVO svo);
	
	public List<ScheduleVO> getScheduler(ScheduleVO svo);
}
