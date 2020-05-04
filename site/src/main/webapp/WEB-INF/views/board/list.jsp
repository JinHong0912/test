<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../include/head.jspf"%>
<%@include file="../include/info.jspf"%>
<style>
.tbl-users {
	padding: 10px 10%;
}

tr {
	height: 45px;
}

th {
	background-color: #5d1049;
	color: #fff;
}

td {
	text-align: center;
}
.btn {
	width: 80px;
	height: 35px;
	padding: 5px;
	line-height: 35px;
	text-align: center;
	border: 1px solid #ccc;
	cursor: pointer;
	font-weight: 700;
	font-size: 15px;
	outline: none;
	background-color: #fafafa;
}
select {
	border: 1px solid #ccc;
	width: 140px;
	height: 35px;
	line-height: 35px;
	font-size: 13px;
	text-align: center;
}


</style>

<div class="tbl-users">
	<div class="top-items">
		<a href="/board/add" class="btn bold">글쓰기</a>

		<form name="" id="" method="get" action="/board/list">
			<select name="searchOpt">
				<option value="all"
					<c:out value="${searchOpt == 'all' ? 'selected' : ''}"/>>전체</option>
				<option value="subject"
					<c:out value="${searchOpt == 'subject' ? 'selected' : ''}"/>>아이디</option>
				<option value="writer"
					<c:out value="${searchOpt == 'writer' ? 'selected' : ''}"/>>이름</option>
			</select> <input type="text" name="words" id="words" value="${words}">
			<button type="submit" id="search" class="btn">검색</button>
			<a href="/board/list" id="search" class="btn">전체보기</a>
		</form> 
	</div>

	<table>
		<tr>
			<th>No.</th>
			<th>Suject.</th>
			<th>Writer.</th>
			<th>Visit.</th>
			<th>Date.</th>
			<th>Etc.</th>
		</tr>
		<c:forEach items="${vList}" var="board">
			<tr>
				<td>${board.id}</td>
				<td>
					<a href="/board/detail?id=${board.id}">${board.subject}</a>
				</td>
				<td>${board.writer}</td>
				<td>${board.hit}</td>
				<td>${board.regdate}</td>
				<td class="col">
					<a href="/board/modify?id=${board.id}" class="btn">수정</a>
					<a href="/board/delete?id=${board.id}" class="btn">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>

</div>

<script>
$(function() {
	$("#search").click(function() {
		if ($("#words").val() == '') {
			alert("검색어를 입력해 주세요.");
			$('#words').focus();
			return false;
		}

	});
});


</script>

<%@include file="../include/foot.jspf"%>