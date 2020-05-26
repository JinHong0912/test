$(function(){
	$(".fa-plus").click(function(){
		var n = $(".num").val();//현재 입력된 값
		//alert(n);
		$(".num").val( (n * 1) + 1 );// n + 1
	});

	$(".fa-minus").click(function(){
		var n = $(".num").val();//현재 들어가 있는  값
//		alert(n);
		if( n < 1 ){
			n = 2;
		}
		$(".num").val( (n * 1) - 1 );// n + 1
		
	});




});