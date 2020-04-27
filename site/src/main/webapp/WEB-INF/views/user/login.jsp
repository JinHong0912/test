<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/head.jspf"%>
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/login.css">
<!-- 로그인 중일 때 여기로 (login.jsp) 접속 한다면 -->
<!-- 로그인 중일 때 여기로 (login.jsp) 접속 한다면 -->
<%-- <c:if test="${sessionScope.userid != null }">
	<script>
		alert("로그인 중입니다. \n 메인 페이지로 이동합니다.");
		window.location.replace("/admin/home");
	</script>

</c:if>
 --%>

<div class="container">
	<div class="login-box">
		<a href="/user/register"><strong>회원가입 화면으로 이동</strong></a>
		<h1>로그인</h1>
		<div class="form">
			<form method="post" action="/user/loginCheck">
			  <div class="container">
            <div class="login-box">
                <h1>로그인</h1>
                <div class="flex-wrap">
                    <div class="text-box">
                        <input type="text"  id="userid" name="userid" maxlength="15" placeholder="Your ID"/>
                        <input type="password"  id="passwd" name="passwd" maxlength="15"  placeholder="Your Password"/>
                    </div>
                    <span>
                        <a href="#">회원가입 아이디/ 비밀번호 찾기</a>
                    </span>
                    <div class="login-btn">
                       <!--  <button type="submit">LOGIN</button> -->
						<input type="submit" id="submit" value="로그인" />
						<p style="color: #f00; text-align: center;">${msg}</p>
                    </div>
                </div>
            </div>
        </div>
				
				
				

			</form>
		</div>
	</div>
</div>

<script>
 $(function() {
	$("#submit").click(function(){

		if($("#userid").val()== ""){
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return false;
			}

		if($("#passwd").val()== ""){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			return false;
			}
		});

 });

</script>




<%@include file="../include/foot.jspf"%>
