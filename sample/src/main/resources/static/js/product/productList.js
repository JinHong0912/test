

function checkDelete(pid){
	var str = "상품과 관련된 모든 내용이 삭제 됩니다.\n 선택하신 상품을 삭제 하시겠습니까?";
	
	if( confirm( str ) ){
		location.href = '/product/setProductDelete?pid='+pid;
		
	}
	
	
	
}