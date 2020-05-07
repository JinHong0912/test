$(function(){
    $("#search-btn").click(function(){
        var words = $.trim( $("#words").val() );
        
        if( words == '' ){
            alert("검색어를 입력하세요.")
           $("#words").focus();
            return false;
        }
    });
});


//전체 선택 부분!!!
$(function () {
	$("#checkAll").click(function() {
		if($("#checkAll").is(":checked")){//체크
			$(".chk").prop("checked", true);
			
			
		}else{//체크해제
			$(".chk").prop("checked", false);
			
		}
	});
});
