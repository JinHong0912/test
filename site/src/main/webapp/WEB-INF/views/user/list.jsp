<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/head.jspf"%>
<%@include file="../include/info.jspf"%>
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/list.css">

<style>
th:nth-child(1) {
	width: 5%;
}

th:nth-child(2) {
	width: 15%;
}

th:nth-child(3) {
	width: 15%;
}

th:nth-child(4) {
	width: 15%;
}

th:nth-child(5) {
	width: 15%;
}

th:nth-child(6) {
	width: 15%;
}

th:nth-child(7) {
	width: 20%;
}

.wrap {
	padding: 20px 5%;
}

td {
	text-align: center;
}

span {
	font-size: 17px;
}

tr {
	height: 45px;
}

.btn-box {
	display: flex;
	justify-content: space-between;
	margin: 10px;
	line-height: 35px;
}

a.btn {
	display: inline-block;
	background-color: #fafafa;
	border: 1px solid #ccc;
	width: 80px;
	height: 35px;
	text-align: center;
	line-height: 35px;
	color: #666;
	font-size: 13px;
	font-weight: 700;
	text-decoration: none;
}

a.btn-start {
	display: inline-block;
	background-color: #fafafa;
	border: 1px solid #ccc;
	width: 80px;
	height: 35px;
	line-height: 35px;
	text-align: center;
	color: #666;
	font-size: 13px;
	font-weight: 700;
	text-decoration: none;
	text-align: center;
}

select {
	border: 1px solid #ccc;
	width: 140px;
	height: 35px;
	line-height: 35px;
	font-size: 13px;
	text-align: center;
}

input {
	display: inline-block;
	border: 1px solid #ccc;
	height: 35px;
	padding: 0 5px;
	vertical-align: top;
}

a.btn , button.btn{
	width: 70 px;
	height: 35 px;
	text-align: center;
	line-height: 35 px;
	color: #666;
}

.paging{
	margin-top: 10px;
}

a.number{
	background-color: #3a8bcd;
	display: inline-block;
	color: #fff;
	margin-right: 4px;
	padding: 10px 15px;
	border: 1px solid transparent;
	
}

a.number:hover{
	background-color: transparent;
	color:#5d1049;
	border: 1px solid transparent;
	transition: 0.5s;
}
</style>

<div class="wrap">

	<div class="btn-box">
		<span>
		<c:if test="${ words == '' }"> 
		전체회원수 : <strong>${count}</strong>명
		</c:if>
		</span>
		<span>
		<c:if test="${ words != '' }"> 
		검색된 회원수 : <strong>${count}</strong>명
		</c:if>
		</span>
		<div class="valign">
			<form name="" id="" method="get" action="/user/list">
				<select name="searchOpt">
					<option value="all" <c:out value="${searchOpt == 'all' ? 'selected' : ''}"/>>전체</option>
					<option value="userid" <c:out value="${searchOpt == 'userid' ? 'selected' : ''}"/>>아이디</option>
					<option value="name" <c:out value="${searchOpt == 'name' ? 'selected' : ''}"/>>이름</option>
				</select> 
				<input type="text" name="words" id="words" value="${words}">
				<button type="submit" id="search" class="btn">검색</button>
				<a href="/user/list" id="search" class="btn">전체보기</a>
			</form>
		</div>

		<div class="main-box">
			<a href="/user/list" class="btn-start ">전체보기</a> <a
				href="/user/login" class="btn-start ">로그인</a> <a
				href="/user/register" class="btn-start ">회원가입</a>
		</div>
	</div>
	<table>
		<tr>
			<th>번호</th>
			<th>회원아이디</th>
			<th>회원이름</th>
			<th>회원권한</th>
			<th>회원이메일</th>
			<th>회원가입일</th>
			<th>비고</th>
		</tr>
		<!-- loop -->
		<c:forEach var="user" items="${list}">
			<tr>
				<td>${user.id}</td>
				<td><a href="/user/view?id=${user.id}"> <strong>${user.userid}</strong>
				</a></td>
				<td>${user.name}</td>
				<%-- 테스트용 <td>${user.auth}</td> --%>
				<td><select name="auth" id="auth"
					onChange="authSelect(this.value, '${user.userid}');"
					<c:if test="${user.auth eq '최고관리자'}">disabled</c:if>>
						<option value="최고관리자"
							<c:if test="${user.auth eq '최고관리자'}">selected</c:if>>최고관리자</option>
						<option value="직원"
							<c:if test="${user.auth eq '직원'}">selected</c:if>>직원</option>
						<option value="일반"
							<c:if test="${user.auth eq '일반'}">selected</c:if>>일반</option>
				</select></td>

				<td>${user.email}@${user.domain}</td>
				<td>${user.regdate}</td>
				<td><c:if test="${user.auth ne '최고관리자'}">
						<a href="#" class="btn bold">가입승인</a>
					</c:if> <!-- <a href="#" class="btn">수정</a> --> <a id="updateBtn"
					href="/user/updateView?id=${user.id}" class="btn">수정</a> <c:if
						test="${user.auth ne '최고관리자'}">
						<a id="deleteBtn" href="/user/delete?id=${user.id}"
							class="btn bold">삭제</a>
					</c:if></td>
			</tr>
		</c:forEach>
		<!-- loop -->
	</table>
		
		<div class="paging">
			
			<c:forEach begin = "1" end ="${pageNum}" var="num">
				<span>
					<a href="/user/list?num=${num}&searchOpt=${searchOpt}&words=${words}" class="number">${num}</a>
				</span>
			</c:forEach>
			
			
			
		
		</div>







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

	$(function() {
		$("#deleteBtn").click(function() {
			if (confirm('회원정보를 삭제하시겠습니까?') == false) {

				return false;

			}

		});

		/* $("#updateBtn").click(function(){
			if( confirm('회원정보를 수정하시겠습니까?') == false ){

				return false;

				}

			}); */

	});
</script>
<script>
	function authSelect(value, userid) {
		/* alert(value); alert(userid); */

		$.ajax({
			type : "post",
			url : "/user/authUpdate",
			data : {
				"auth" : value,
				"userid" : userid
			},
			complete : function() {
				alert("권한 변경이 완료 되었습니다.");
				window.location.reload(); //화면 새로고침(자료 손실x)
			}

		});

	}
</script>
<%@include file="../include/foot.jspf"%>