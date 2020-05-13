<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../include/head.jspf"%>
<%@include file="../include/info.jspf"%>
<style>
.tbl-users {
	padding: 0 10%;
}

tr td {
	border: 1px solid #000;
}

tr {
	height: 50px;
}

th {
	background-color: #5d1049;
	color: #fff;
}

td {
	text-align: left;
}
input[type="text"] {
	width: 40%;
	height: 40px;
}
</style>

<script src="/ckeditor/ckeditor.js"></script>
<div class="tbl-users">

	<form method="post" action="/board/doAdd" enctype="multipart/form-data">
		<table>
			<tr>
				<td>게시물 제목</td>
				<td><input type="text" name="subject" id="subject" autofocus></td>
			</tr>
			<tr>
				<td>게시물 작성자</td>
				<td><input type="text" value="${sessionScope.username}" readonly name="writer" id="writer"></td>
			</tr>
			<tr>
				<td>게시물 내용</td>
				<td><textarea name="content" id="editor">${view.content}</textarea></td>
				<script>
					CKEDITOR.replace("editor");
					CKEDITOR.config.height = 400;
				</script>
			</tr>
			<tr>
				<td>게시물 첨부파일</td>
				<td><input type="file" name="files"></td>
			</tr>
		</table>
		<div class="bottom-btn">
			<button type="submit" class="btn"  id="btn">게시물 등록</button>
			<button type="reset" class="btn"  onclick="javascript:history.back();">등록취소</button>
		</div>
	</form>


</div>

<script>
	initSample();
</script>

<script>
	$(function(){
		$("#btn").click(function(){


			//wyswig editor 유효성 검사
			var str = CKEDITOR.instances.editor;
			if( str.getData() == ""){
					alert("게시물 내용을 입력하세요.");
					str.focus();
					return false;
			}


			});
			



			});
	
		



</script>
<%@include file="../include/foot.jspf"%>