<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/head.jspf"%>
<link rel="stylesheet" href="/css/register.css"> 


<body>
	<main>
		<div id="container" class="pos-abs-center">
			<form method="post" action="/users/register">
				<div id="login-box" class="br-5">
					<!-- title box -->
					<h2 class="eng align font-24 skyblue">Insert Your Information</h2>
					<hr class="margin-tb-30" />
					<p id="confirm" class="align tomato bold margin-tb-20">&nbsp;</p>

					<!-- input $ icon -->
					<div class="pos-rel">
						<span class="form-icon">
							<i class="far fa-address-card"></i>
						</span>
						<input type="text" name="userID" id="userID"
							class="input-full br-3 padding-lr-40"
							placeholder="Indentification" maxlength="20" autofocus
							tabindex="1">
					</div>

					<div class="pos-rel margin-t10">
						<span class="form-icon">
							<i class="fas fa-unlock-alt"></i>
						</span>
						<input type="password" name="passwd" id="passwd"
							class="input-full br-3 padding-lr-40" placeholder="Passowrd"
							maxlength="20" autofocus tabindex="2">
					</div>
					<!-- jquery 확인용 -> db 저장(X) -->
					<div class="pos-rel margin-t10">
						<span class="form-icon">
							<i class="far fa-check-circle"></i>
						</span>
						<input type="password" name="repasswd" id="repasswd"
							class="input-full br-3 padding-lr-40" placeholder="RePassowrd"
							maxlength="20" autofocus tabindex="3">
					</div>

					<div class="pos-rel margin-t10">
						<span class="form-icon">
							<i class="fas fa-signature"></i>
						</span>
						<input type="text" name="userName" id="userName"
							class="input-full br-3 padding-lr-40" placeholder="userName"
							maxlength="20" autofocus tabindex="4">
					</div>

					<div class="pos-rel margin-t10">
						<span class="form-icon">
							<i class="fas fa-envelope-open-text"></i>
						</span>
						<input type="text" name="userEmail" id="userEmail"
							class="input-full br-3 padding-lr-40" placeholder="Your E-Mail"
							maxlength="50" autofocus tabindex="5">
					</div>

					<div class="pos-rel margin-t10">
						<span class="form-icon">
							<i class="fas fa-inbox"></i>
						</span>
						<input type="text" name="userDomain" id="userDomain"
							class="input-200 br-3 padding-lr-40" placeholder="Domain"
							maxlength="50" value="naver.com" readonly autofocus tabindex="6">
						<select name="url" id="url" class="reg-sel float-r">
							<option value="1">직접입력</option>
							<option value="naver.com" selected>naver.com</option>
							<option value="hanmail.com">hanmail.com</option>
							<option value="korea.com">korea.com</option>
							<option value="google.com">google.com</option>
							<option value="nate.com">nate.com</option>
						</select>
						<div class="clearfix"></div>
					</div>

					<div class="pos-rel margin-t10">
						<span class="form-icon">
							<i class="fas fa-phone-volume"></i>
						</span>
						<input type="text" name="userPhone" id="userPhone"
							class="input-full br-3 padding-lr-40"
							placeholder="Your Phone Number" maxlength="15" autofocus
							tabindex="7">
					</div>

					<!-- register btn -->
					<div class="margin-t10">
						<button id="reg-btn" class="btn-full bg-color-12 eng f6">
							Registration</button>
					</div>

					<!-- forgot & login -->
					<div class="margin-t10">
						<span class="eng font-14 float-l"> <a href="#">Forgot
								Your Password?</a>
						</span> <span class="eng font-14 float-r"> <a href="/login">Login
								Page</a>
						</span>
						<div class="clearfix"></div>
					</div>
			</form>
		</div>
	</main>
</body>

<script src="/js/register.js"></script>

<%@include file="../include/foot.jspf"%>