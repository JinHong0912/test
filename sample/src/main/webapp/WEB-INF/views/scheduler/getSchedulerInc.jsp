<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 잘 알아 두기 calendar 사용 하는 방법 -->
<!-- 필수 라이브러리 -->
<link href='/fullcalendar/core/main.css' rel='stylesheet' />
<link href='/fullcalendar/daygrid/main.css' rel='stylesheet' />
<link href='/fullcalendar/timegrid/main.css' rel='stylesheet' />
<link href='/fullcalendar/list/main.css' rel='stylesheet' />
<script src='/fullcalendar/core/main.js'></script>
<script src='/fullcalendar/interaction/main.js'></script>
<script src='/fullcalendar/daygrid/main.js'></script>
<script src='/fullcalendar/timegrid/main.js'></script>
<script src='/fullcalendar/list/main.js'></script>
<script src='/fullcalendar/core/locales/ko.js'></script>
<!-- 데이터 피커 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- ---------------------------------------------------------------- -->
<div id="main-scheduler" class="bg-color-8 margin-t20 padding-a-20">

	<div class="title-wrap margin-b20">
		<span class="font-16 bold noto">4.스케줄러</span>
		<span class=""></span>
	
	</div>
	
	<form id="newScheduleForm" action="" class="newScheduleForm" autocomplete="off">
		<table class="margin-t20 margin-b20">
			<tr>
				<th class="w-10"> 시작일자</th>
				<td class="w-10">
					<input type="text" id="startDate" name="startDate" class="input-200 padding-lr-5"/>
				</td>

				<th class="w-10"> 종료일자</th>
				<td class="w-10">
					<input type="text" id="endDate" name="endDate" class="input-200 padding-lr-5"/>
				</td>


				<th class="w-10"> 일정내용</th>
				<td class="w-10">
					<input type="text" id="scheduleContent" name="scheduleContent" class="input-200 padding-lr-5" required/>
				</td>
				
				<td class="w-5 ralign">
					<button type="submit" id="addScheduleButton"  class="btn-50 bo-blue boid">추가</button>
				</td>
			</tr>
			

		</table>
		<input type="hidden" name="userName" id="userName" value="${userName}"/>
	
	</form>
<!-- 	fullcalendar 출력 -->
	<div id="calendar"></div>

</div>





<script>
	$(document).ready(function () {
		getScheduler();

		$("#startDate , #endDate").datepicker({
			dateFormat :'yy-mm-dd'
	
		});
		
		$("#addScheduleButton").click(function(){
			setScheduler();
			

		});
	});

	function setScheduler(){
		//ajax 입력 + json(ket, value)
		alert("이까지 들옴")
		var insertData = $("#newScheduleForm").serialize();
		alert(insertData);
		$.ajax({
			type : "post",
			url : "/scheduler/setScheduler",
			data : insertData,
			/* 그린 ->(urlencoding) %d%c%83  */
			/* %d%c%83->(url decoding) 그린  */   
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',
			dataType : 'json',

			success : function(responseData) {
				alert("일정이 추가 되었습니다.");
				window.location.reload();	
			},
			error : function(){
			alert("에러 ");
			
			}
		});
	}

	
	function getScheduler() { // 달력에 쓰기 + 출력
		//ajax
		var data = new Object();
		JSON.stringify(data);// JSON 타입으로 데이터를 담기 위한 준비

		$.ajax({
			type : "post",
			url : '/scheduler/getScheduler',
			data : data, 
			
			contentType :'application/x-www-form-urlencoded; charset=utf-8',
			dataType :'json',
			success : function(responseData){

				for( var i = 0; i < responseData.data.length;i++) {
					responseData.data[i].start = responseData.data[i].startDate;
					responseData.data[i].end = responseData.data[i].endDate;
					responseData.data[i].title = responseData.data[i].scheduleContent;
				
				}
				makeCalendar(responseData.data);
			}
		});

		//화면에 달력을 출력
		
	}

	function makeCalendar(data){
		    var calendarEl = document.getElementById('calendar');

		    var calendar = new FullCalendar.Calendar(calendarEl, {
		      plugins: [ 'interaction', 'dayGrid', 'timeGrid'],
		      header: {
		        left: 'prev,next today',
		        center: 'title',
		        right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
		      },
		      navLinks: true, // can click day/week names to navigate views
		      editable: true,
		      eventLimit: true, // allow "more" link when too many events
			  locales:"ko",
			  events : data
			  
		    });

		    calendar.render();
				
	}
</script>


