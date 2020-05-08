<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/head.jspf"%>
<link rel="stylesheet" href="/css/login.css">

<body>
	<main>
		<div id="container" class="pos-abs-center">
			<div id="login-box" class="br-5">
				<h2 class="eng align font-24 skyblue">Let's Go another site
					with Us</h2>

				<!-- main btn -->
				<div class="social eng align margin-t20">
					<span class="social-icon">
						<i class="far fa-building"></i> <span class="eng bold"> 
						<a href="localhost:8888">Go Mall</a>
						</span>
					</span>

					<span class="social-icon">
						<i class="fas fa-suitcase-rolling"></i> <span class="eng bold">
							<a href="#submit">Tour Site</a>
						</span>
					</button>
				</div>
				<hr class="margin-tb-30" />
				<h2 class="eng align font-20 skyblue ">Insert Your ID &
					Password</h2>
				<p id="confirm" class="align tomato bold margin-tb-20">${msg}</p>

				<form method="post" action="/users/loginCheck">
					<!-- input $ icon -->
					<div class="pos-rel">
						<button class="form-icon">
							<i class="far fa-address-card"></i>
						</button>
						<input type="text" name="userID" id="userID"
							class="input-full br-3 padding-lr-40"
							placeholder="Indentification" maxlength="20" autofocus
							tabindex="1">
					</div>

					<div class="pos-rel margin-t10">
						<button class="form-icon">
							<i class="fas fa-unlock-alt"></i>
						</button>
						<input type="password" name="passwd" id="passwd"
							class="input-full br-3 padding-lr-40" placeholder="Passowrd"
							maxlength="20" autofocus tabindex="2">
					</div>

					<!-- login btn -->
					<div class="margin-t10">
						<button id="login-btn" class="btn-full bg-color-12 eng f6">Sign
							In</button>
					</div>

					<!-- forgot & login -->
					<div class="margin-t10">
						<span class="eng font-14 float-l"> <a href="#">Forgot
								Your Password?</a>
						</span> <span class="eng font-14 float-r"> <a
							href="/users/register">Create New Account</a>
						</span>
						<div class="clearfix"></div>
					</div>

				</form>
			</div>
		</div>

	</main>
</body>

<script src="/js/login.js"></script>
<%@include file="include/foot.jspf"%>