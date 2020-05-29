package com.greenart.sample.model;

public class ScheduleVO {
	
	
		private String startDate;
		private String endDate;
		private String scheduleContent;
		private String userName;
		private String start;
		private String end;
		private String title;
//		
		
		public String getStartDate() {
			return startDate;
		}
		public String getStart() {
			return start;
		}
		public void setStart(String start) {
			this.start = start;
		}
		public String getEnd() {
			return end;
		}
		public void setEnd(String end) {
			this.end = end;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public void setStartDate(String startDate) {
			this.startDate = startDate;
		}
		public String getEndDate() {
			return endDate;
		}
		public void setEndDate(String endDate) {
			this.endDate = endDate;
		}
		public String getScheduleContent() {
			return scheduleContent;
		}
		public void setScheduleContent(String scheduleContent) {
			this.scheduleContent = scheduleContent;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		
}
