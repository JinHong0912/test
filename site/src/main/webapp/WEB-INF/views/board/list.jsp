<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../include/head.jspf"%>
<%@include file="../include/info.jspf"%>
<style>
.tbl-users {
	padding: 0 10%;
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
.btn{
    width: 40%;
    height: 50px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: 700;
    font-size: 15px;
    outline: none;
    background-color: #eee;
    
}

</style>

<div class="tbl-users">
	<div class="top-items">
		<a href="/board/add" class="btn bold">글쓰기</a>
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
				<td>${board.subject}</td>
				<td>${board.writer}</td>
				<td>${board.hit}</td>
				<td>${board.regdate}</td>
				<td class="col">
					<a href="#" class="btn">수정</a>
					<a href="#" class="btn">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>

</div>



<%@include file="../include/foot.jspf"%>