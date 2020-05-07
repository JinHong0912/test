/**
 * 작성일 : 2020년 5월 7일 작성자 : 류진홍
 */

function authUpdate(auth, uid) {
	// alert(data); alert(userID);
	$.ajax({
		type : "post",
		url : "/users/authUpdate",
		data : {
			"auth" : auth, // controller에서 사용할 변수 : 넘어 온 값
			"uid" 	: uid
		},
		success : function(data) {
			if (data == "success") {
				alert("권한이 변경 되었습니다.");
				window.location.reload();

			} else {
				alert("권한 변경이 실패했습니다. 다시 확인해 주세요.");
				window.location.reload();
			}

		},
		// complete:function(){},
		error : function() {
			alert("시스템 오류입니다. 확인하세요.");
		}
	});

}

// alert(); 경고창만 뛰우는거
// confirm은 yes 아니면 no
// select All
$(function() {
	$("#selectDelete-btn").click(function() {
		var msg = "삭제하신 정보는 복구 불가능 합니다.\n 선택하신 회원정보를 삭제하시겠습니까?";
		var str = confirm(msg);// 취소 == false 확인 yes

		if (str) {
			// alert("전체삭제");
			var chkArr = new Array();
			$(".chk:checked").each(function() {
				chkArr.push($(this).attr("data-uid"))// 각각에 대한 값
			});

			// alert(chkArr);
			$.ajax({
				type : "post",
				url : "/users/setUsersDeleteAll",
				data : {
					chkArr : chkArr

				},
				success : function(data) {
					if (data == "success") {
						alert("선택하신 회원 정보가 삭제 되었습니다.");
						window.location.reload();
					} else {
						alert("회원 정보가 삭제 되지 않았습니다.\n 확인하세요");

					}

				},
				error : function() {
					alert("시스템 오류입니다 확인하세요.");

				}

			});

		} else {
			return false;
		}
	});
});

//user delete
function selectedDelete(uid){//화면(값) 함수(변수)
		var msg = "삭제하신 정보는 복구 불가능 합니다.\n 선택하신 회원정보를 삭제하시겠습니까?";
		var str = confirm(msg);// 취소 == false 확인 yes
		
		if( str ){
			location.href='/users/setUsersDelete?uid='+uid;
			
		}
}

