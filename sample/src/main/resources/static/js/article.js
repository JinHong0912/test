$(function() {
		$("#selectDelete-btn").click(function() {
			//alert("aaaaa");
			var str = "선택하신 게시물을 삭제하시겠습니까?\n 게시물과 연결된 댓글 및 데이터가 삭제 됩니다.";
			if (confirm(str) == false) {
				return;

			} else {
				var boardCode = $(".chk").attr("data-code");
				var chkArr = new Array();

				/* each :List */
				$(".chk:checked").each(function() {
					chkArr.push($(this).attr("data-aid"));
				});
// 				alert(boardCode);
// 				alert(chkArr);

				$.ajax({
					type : "post",
					url : "/article/setArticleDeleteAll",
					data : {
						boardCode : boardCode,
						chkArr : chkArr
					},
					success : function(data) {
						if (data == "success") {
							alert("선택하신 게시물이 삭제 되었습니다.");
							location.reload();
						} else {
							alert("선택하신 게시물을 삭제할 수 없습니다.");
						}
					},
					error : function() {
						alert("선택하신 게시물이 없습니다.");
					}
				});
			}
		});
	});