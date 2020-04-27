<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/head.jspf"%>
<link rel="stylesheet" href="/css/reset.css">

<style>
	#container {
		position:absolute;
		top:50%;
		left:50%;
		transform:translate(-50%,-50%);
		

		
		}

		.box{
		max-width: 800px;
		padding: 50px
		}
	

		a.member{
		
		background-color:#b00020;
		color:#fff;
		display:inline-block;
		width:280px;
		height:110px;
		text-align:center;
		line-height:110px;
		font-size:24px;
		border-radius:3px;
		
		}

		a.articls{
		
		background-color:#3700b3;
		color:#fff;
		display:inline-block;
		width:280px;
		height:110px;
		text-align:center;
		line-height:110px;
		font-size:24px;
		border-radius:3px;
		
		}


</style>



<div id="wrap">
<%@include file="../include/info.jspf"%>
	<!-- 버튼 -->
	
	<div id="container">
	<div class="box">
		<div class="link-items">
			<div class="btn-items">
			<c:if test="${sessionScope.auth eq '최고관리자' }">
				<a href="/user/list" class="member">회원관리 페이지</a>
			</c:if>
				<a href="/board/list" class="articls">게시물 관리 페이지</a>			
			</div>
		</div>
	</div>
	
	</div>
</div>



<%@include file="../include/foot.jspf"%>