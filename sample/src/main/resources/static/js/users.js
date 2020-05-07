/** 
 * 	작성일 : 2020년 5월 7일 
 *  작성자 : 류진홍
 */

function authUpdate(auth, userID){
	//alert(data);	alert(userID);
	$.ajax({
		type : "post",
	 	 url : "/users/authUpdate",
	    data :{
	    	"auth" : auth, // controller에서 사용할 변수 : 넘어 온 값
	    	"userID": userID
	    },
	    success: function(data){
	     	if(data == "success"){
	    		alert("권한이 변경 되었습니다.");
		    	window.location.reload();	
	    		
	    	}else{
	    		alert("권한 변경이 실패했습니다. 다시 확인해 주세요.");
	    		window.location.reload();
	    	}
	    	
	    },
	    //complete:function(){},
	    error :function(){
	    	alert("시스템 오류입니다. 확인하세요.");
	    }
	});
	
}