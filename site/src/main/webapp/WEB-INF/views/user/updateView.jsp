<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/head.jspf"%>
<%@include file="../include/info.jspf"%>
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/register.css">

	<div id="container">
		<div class="content-box">

			<div class="member">
				<h1>회원가입</h1>
			</div>
			<div class="form">
				<form method="post" action="/user/updateDo">
				<input type="hidden" name="id" value= "${vo.id}">
					<table>

						<tr class="tr-h">

							<td class="td-box td-bgcol1">아이디</td>
							<td colspan="4"><input type="text" id="userid" name="userid" value= "${vo.userid}" 
								class="in-text"></td>
						</tr>
						<tr class="tr-h">

							<td class="td-box td-bgcol1">비밀번호</td>
							<td colspan="4"><input type="password" id="passwd" name="passwd"
								class="in-text"></td>
						</tr>
						<tr class="tr-h">

							<td class="td-box td-bgcol1">비밀번호 확인</td>
							<td colspan="4"><input type="password" id="passwd2" name="passwd2"
								class="in-text"></td>
						</tr>
						<tr class="tr-h">

							<td class="td-box td-bgcol1">이름</td>
							<td colspan="4"><input type="text" id="name" name="name" value= "${vo.name}"
								class="in-text"></td>
						</tr>
						<tr class="tr-h">

							<td class="td-box td-bgcol1">휴대전화</td>
							<td colspan="4"><input type="text" id="phone" name="phone" value= "${vo.phone}"
								class="in-text"></td>
						</tr>
						<tr class="tr-h">

							<td class="td-box td-bgcol1">이메일</td>
							<td colspan="4"><input type="text" id="email" name="email" value= "${vo.email}"
								class="in-text in-text-email"> @ 
								<input type="text"name="domain" id="domain" readonly name="domain" value= "${vo.domain} "class="in-text-email"> 
								<select	id="selectDomain">
									<option value="1" >직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.com">hanmail.com</option>
									
							</select>
							</td>
						</tr>
					</table>

					<div class="btn-box">
						<button type="submit" class="btn-end btn-bgcol1 btn-col1" id="reg">회원가입</button>
						<button type="reset" class="btn-end btn-bgcol2 btn-col1">가입취소</button>
					</div>
				</form>
			</div>
		</div>

	</div>
<script>
	$(function(){
		$("#reg").click(function(){
			var uid =$("#userid");
			if($.trim($("#userid").val()) == '' ){
				alert("아이디를 입력하세요.");
				$("#userid").focus();
				$("#userid").val("");
				return false;
				}

			var uid =$("#passwd");
			if($.trim($("#passwd").val()) == '' ){
				alert("비밀번호를 입력하세요.");

				$("#passwd").focus();
				$("#passwd").val("");
				return false;
				}


			var uid =$("#passwd");
			if($.trim($("#passwd2").val()) == '' ){
				alert("비밀번호를 확인 하세요.");

				$("#passwd").focus();
				$("#passwd").val("");
				return false;
				}

			var uid =$("#name");
			if($.trim($("#name").val()) == '' ){
				alert("이름을 입력하세요.");

				$("#name").focus();
				$("#name").val("");
				return false;
				}

			var uid =$("#phone");
			if($.trim($("#phone").val()) == '' ){
				alert("번호 주세요.");

				$("#phone").focus();
				$("#phone").val("");
				return false;
				}

			var uid =$("#email");
			if($.trim($("#email").val()) == '' ){
				alert("이메일 입력하세요.");

				$("#email").focus();
				$("#email").val("");
				return false;
				}
			

			
				});
				
			$("#selectDomain").change(function(){
				$("#selectDomain option:selected").each(function(){
						if( $(this).val() == 1 ){
							$("#domain").val("");
							$("#domain").attr("readonly", false);
							$("#domain").focus();

						}else{
							$("#domain").attr("readonly", true);
							$("#domain").val($(this).text());
						}

					});
			
				});		
		});

</script>



<%@include file="../include/foot.jspf"%>