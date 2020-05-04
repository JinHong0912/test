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
	<form method="post" action="/board/update" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${bvo.id}" />
		<table>
			<tr>
				<td>게시물 제목</td>
				<td><input type="text" name="subject" id="subject" value="${bvo.subject}" autofocus></td>
			</tr>
			<tr>
				<td>게시물 작성자</td>
				<td><input type="text" value="${bvo.writer}" readonly name="writer" id="writer"></td>
			</tr>
			<tr>
				<td>게시물 내용</td>
				<td><textarea name="content" id="editor">${bvo.content}</textarea></td>
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

<script>
	initSample();
</script>

	<%@include file="../include/foot.jspf"%>