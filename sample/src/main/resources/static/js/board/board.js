/*
 * 	작성일 : 5월 11일 월요일
	작성자 : 류진홍
*/

$(function(){
		$("#boardColor").change(function () {
//			alert(this.value);
			$("#clrBox").css({
				backgroundColor : $(this).val();
			});
		});
});


/* 한글 게시판 코드 X */
	$(function(){
		$("#boardCode").keyup(function ()  {
			$(this).val( $(this).val().replace(/[0-9]|[^\!-z]/gi,"")  );
		});	
	
	});
	
	
/* board check*/
	$(function () {
		$("#board-btn").click(function () {
			var boardCode = $("#boardCode");
			var boardName = $("#boardName");
		
			if( boardCode.val() == ''){
				alert("게시판 코드를 입력하세요");
				boardCode.val();
				boardCode.focus();
				
				return false;
			}
			
		
			if( boardName.val() == ''){
				alert("게시판 이름를 입력하세요");
				boardName.val();
				boardName.focus();
				
				return false;
			}
			
						
		});
});
	