

function checkDelete(pid){
	var str = "상품과 관련된 모든 내용이 삭제 됩니다.\n 선택하신 상품을 삭제 하시겠습니까?";
	
	if( confirm( str ) ){
		location.href = '/product/setProductDelete?pid='+pid;
		
	}
}

$("#selectDelete-btn").click(function(){
	
	var msg = "선택하신 상품을 삭제하시겠습니까? 삭제 후 복구 되지 않습니다."	
	
	if( confirm(msg) == false ){
		return;
	}else{
		var chkArr = new Array;
		$(".chk:checked").each(function() {//each = for 배열
			chkArr.push($(this).attr("data-pid"));
		alert("값이 들어옴");
			$.ajax({
				type : "post",
				url  : "product/setProductDeleteAll",
				data :{
					chkArr : chkArr
				},
				success : function(data){
					if( data == "1"){
						alert("선택하신 상품이 삭제 되었습니다.");
						window.location.reload();
					}else{
						alert("선택하신 상품을 삭제 할 수 없습니다.");
					}
				},
				error : function(){
					alert("삭제가 되지 않았습니다. 관리자에게 문의하세요.");
					
				}		
			});
		});
	}
	
	
});