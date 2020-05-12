<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
*{
	margin: 0;
	padding:0;
	box-sizing: border-box;
}

.container{
    width: 900px;
	margin:350px 30%;
	padding: 30px 10px;
	text-align:center;
	background-color: #C3EDEA;
	font-size: 20px;
	font-weight: 700;
	border-radius: 5px;
	

}
.container a{
	color: black;
	text-decoration: none;
	margin-right: 20px;
}
.container a:hover{
	color: #ffff;
}
</style>


<div class="container">
	<a href="/login">로그인</a>
	<a href="/users/register">회원가입</a>
	<a href="/users">관리자</a>
</div>
