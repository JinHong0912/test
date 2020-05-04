<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/head.jspf"%>
<%@include file="../include/info.jspf"%>
<style>
.tbl-users {
	padding: 0 10%;
}

.btn {
	width: 80px;
	height: 35px;
	padding: 10px;
	line-height: 35px;
	text-align: center;
	border: 1px solid #ccc;
	cursor: pointer;
	font-weight: 700;
	font-size: 15px;
	outline: none;
	background-color: #fafafa;
}

.btn-grp {
	margin-top: 30px;
}
</style>
<script src="/ckeditor/ckeditor.js"></script>
<div class="tbl-users">
	게시물 번호 :${view.id}<br /> 게시물 제목 :${view.subject}<br /> 게시물 내용 :
	<textarea name="content" id="editor">${view.content}</textarea>
	</td>
	<script>
		CKEDITOR.replace("editor");
		CKEDITOR.config.height = 400;
	</script>
	<br /> 게시물 조회수:${view.hit}<br /> 게시물 첨부파일 :<a
		href="/board/fileDown?id=${view.id}">${view.fileOriName}</a><br />
	게시물 등록일 :${view.regdate}<br />
	<div class="btn-grp">
		<a href="/board/list" class="btn">게시물 목록</a> <a
			href="/board/modify?id=${view.id}" class="btn">게시물 수정</a> <a
			href="/board/delete?id=${view.id}" class="btn">게시물 삭제</a> <a
			href="/board/add" class="btn">게시물 등록</a>
	</div>

	<form id="commentFrm">
		<!-- 직렬화(serialize) -->
		<div>
			<input type="hidden" name="bseq" value="${view.id}" />
			<textarea id="ccontent" name="ccontent" rows="10"></textarea>
			<span>
				<button type="button" id="commentInsertBtn" class="btn">댓글달기</button>
			</span>
		</div>
	</form>

	<div id="comment_list">
		<!-- ajax insert 동작 완료 후 자동으로 내용 db 내용을 읽어와 표시 -->
		<div class="commentList"></div>
	</div>

<script>
	initSample();
</script>

<script>
	$(function() {
		$('#commentInsertBtn').click(function() {
			if( !$('#ccontent').val() ) {
				alert("댓글 내용을 입력하세요.");
				$('#ccontent').focus();
				return false;
			}
			var bseq = ${view.id};
			$.ajax({
				type: 'POST',
				url: '/comment/insert',
				data: {
					'bseq': bseq,
					'content': $('#ccontent').val()
				},
				success: function(data) { // data -> controller값
					if( data == 1 ) {
						alert("댓글이 저장되었습니다.");
						$('#ccontent').val("");
						commentList();
					}
				}
			});
		});
	});

	function commentList() {
		var bseq = ${view.id};
		$.ajax({
			type: 'POST',
			url: '/comment/list',
			data: {
				'bseq': bseq
			},
			success: function(data) {
				var str = '';
				$.each(data, function(key, value){
					str += '<div><strong>댓글번호 : '+ value.cseq +'</strong></div>';
					str += '<div>댓글내용 : '+ value.content +'</div>';
					str += '<div>수정 삭제</div>';
					str += '<hr />';
					$('.commentList').html(str);
				});
			}
		});
	}

	$(document).ready(function() {
		commentList();
	});
</script>

	<%@include file="../include/foot.jspf"%>