package com.greenart.sample.service.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.sample.model.ScheduleVO;
import com.greenart.sample.repository.scheduler.SchedulerDao;

@Service
public class SchedulerServiceImpl implements SchedulerService {

	@Autowired SchedulerDao sDao;
	
	@Override
	public void setScheduler(ScheduleVO svo) {
		sDao.setScheduler(svo);
		
	}

	@Override
	public List<ScheduleVO> getScheduler(ScheduleVO svo) {
		
		return sDao.getScheduler(svo);
	}

}
