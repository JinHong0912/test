package com.greenart.sample.repository.scheduler;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import com.greenart.sample.model.ScheduleVO;

@Repository
public class SchedulerDaoImpl  implements SchedulerDao{

	@Autowired SqlSession sql;
	
	@Override
	public void setScheduler(ScheduleVO svo) {
		sql.insert("mappers.ScheduleMapper.setScheduler", svo);
		
	}

	@Override
	public List<ScheduleVO> getScheduler(ScheduleVO svo) {
	
		return sql.selectList("mappers.ScheduleMapper.getScheduler",svo);
	}

			
	
}
