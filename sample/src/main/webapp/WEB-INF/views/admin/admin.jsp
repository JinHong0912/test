<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="../js/jquery-3.5.1.min.js"></script>
<!-- session(Object) 없이 접속 했을 때 -->
<c:if test="${sessionScope.auth ne '관리자' && sessionScope.auth ne '회원'}">
	<script>
		alert("접근 권한이 없습니다.\n 관리자 승인 후에 접속해 주세요.");
		window.location.replace("/login");
	</script>
</c:if>



<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자바 기반 디지털 컨버전스 2기</title>
<!-- css -->
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/admin/admin.css">
<!-- js -->
<script src="https://kit.fontawesome.com/8838b56230.js"
	crossorigin="anonymous"></script>
<script src="/js/jquer-3.5.1-min.js"></script>
<script src="js/common.js"></script>


<!--     <script src="https://code.jquery.com./jquery-2.2.4.min.js" -->
<!--         integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script> -->


</head>


<body>
	<header></header>
	<main>
		<div id="container">
			<nav id="nav" class="bg-color-6">

				<!-- admin logo -->
				<div id="nav-top" class="align">
					<a href="/users?template=users&mypage=list"
						class="eng gray-80 font-20 bold">Administrator</a>
				</div>

				<!--admin nav menu -->
				<div id="navbar" class="padding-a-20">
					<div class="margin-t10 margin-b20">
						<span class="eng orange">Navigation</span>
					</div>
					<!-- menu 회원관리-->
					<div id="nav-wrap" class="">
						<div class="icon">
							<i class="fas fa-male gray-80"></i>
						</div>
						<div class="icon-title">
							<a href="/users?template=users&mypage=list" class="eng gray-80">Member
								Management Page</a>
						</div>
						<div class="icon-arrow ralign">
							<i class="fas fa-angle-right gray-80"></i>
						</div>
					</div>
					<!-- // menu 회원관리 -->

					<!-- menu 게시판관리-->
					<div id="nav-wrap" class="margin-t30">
						<div class="icon">
							<i class="fas fa-paper-plane gray-80"></i>
						</div>
						<div class="icon-title">
							<a href="/board" class="eng gray-80">Board Management Page</a>
						</div>
						<div class="icon-arrow ralign">
							<i class="fas fa-angle-right gray-80"></i>
						</div>
					</div>
					<!-- // menu 게시판관리 -->

					<!-- menu 쇼핑몰관리-->
					<div id="nav-wrap" class="margin-t30">
						<div class="icon">
							<i class="fas fa-shopping-cart gray-80"></i>
						</div>
						<div class="icon-title">
							<a href="/product" class="eng gray-80">ShopMall Management
								Page</a>
						</div>
						<div class="icon-arrow ralign">
							<i class="fas fa-angle-right gray-80"></i>
						</div>
					</div>

					<!-- // menu 쇼핑몰관리 -->

					<!-- menu 스케쥴관리-->
					<div id="nav-wrap" class="margin-t30">
						<div class="icon">
							<i class="fas fa-shopping-cart gray-80"></i>
						</div>
						<div class="icon-title">
							<a href="/scheduler" class="eng gray-80">scheduler Management
								Page</a>
						</div>
						<div class="icon-arrow ralign">
							<i class="fas fa-angle-right gray-80"></i>
						</div>
					</div>

					<!-- // menu 쇼핑몰관리 -->

					<!-- menu 사이트관리 & 관리자정보관리-->
					<div id="nav-wrap" class="margin-t30">
						<div class="icon">
							<i class="fas fa-info-circle gray-80"></i>
						</div>
						<div class="icon-title">
							<a href="/info" class="eng gray-80">admin Management Page</a>
						</div>
						<div class="icon-arrow ralign">
							<i class="fas fa-angle-right gray-80"></i>
						</div>
					</div>

					<div id="nav-wrap" class="margin-t30">
						<div class="icon">
							<i class="fas fa-syringe gray-80"></i>
						</div>
						<div class="icon-title">
							<a href="/siteInfo" class="eng gray-80">Site Management Page</a>
						</div>
						<div class="icon-arrow ralign">
							<i class="fas fa-angle-right gray-80"></i>
						</div>
					</div>

					<!-- // menu 사이트관리 & 관리자정보관리 -->
				</div>
			</nav>

			<!-- admin 오른쪽 main -->
			<aside id="main" class="bg-color-8">
				<!-- 개인정보 -->
				<div id="main-top" class="">
					<div id="main-top-left" class="">
						<span class="info-img"> <img src="../images/admin/icon.png"
							alt="">
						</span> <span class="info-text bold font-15"> <strong>${sessionScope.userName}(${sessionScope.auth})</strong>님
							안녕하세요.
						</span> <span class="pos-rel"> <i class="fa fa-bell"></i> <span
							class="msg-cnt bg-color-10 align font-12 gray-80">2</span>
						</span>
					</div>
					<div id="main-top-right" class="">
						<i class="fas fa-sign-out-alt"></i>
						<sapn class=""> <a href="/logout" class="eng">Logout</a> </sapn>
					</div>
				</div>

				<!-- main main 부분 -->
				<div id="main-main" class="bg-color-7">
					<div class="main-content">
						<!-- total box -->
						<div class="main-top-box-wrap">
							<div class="main-top-box box-clr-1 br-3">
								<div class="box-top">

									<div class="item-title float-l">
										<div class="item-count">
											<span class="font-40 bold f6"> <i class="fas fa-male"></i>
												1명
											</span>
										</div>
										<div class="item-tag">
											<span class="bold f6"> Member Reg.(Today) </span>
										</div>
										<!-- <div class="clearfix"></div> -->
									</div>

									<div class="item-icon float-l">
										<span class=""> <i class="fas fa-chart-line f6 font-50"></i>
										</span>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="box-bottom">
									<i class="far fa-clock f6"></i> <span
										class="update-time eng f6 font-12"> Update 02:15 pm </span>
								</div>
							</div>
							<div class="main-top-box box-clr-2 br-3">
								<div class="box-top">

									<div class="item-title float-l">
										<div class="item-count">
											<span class="font-40 bold f6"> <i
												class="fas fa-marker"></i> 123
											</span>
										</div>
										<div class="item-tag">
											<span class="bold f6"> Board Reg.(Today) </span>
										</div>
										<!-- <div class="clearfix"></div> -->
									</div>

									<div class="item-icon float-l">
										<span class=""> <i class="fas fa-chart-line f6 font-50"></i>
										</span>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="box-bottom">
									<i class="far fa-clock f6"></i> <span
										class="update-time eng f6 font-12"> Update 02:15 pm </span>
								</div>
							</div>
							<div class="main-top-box box-clr-3 br-3">
								<div class="box-top">

									<div class="item-title float-l">
										<div class="item-count">
											<span class="font-40 bold f6"> <i
												class="far fa-newspaper"></i> 200
											</span>
										</div>
										<div class="item-tag">
											<span class="bold f6"> Member Reg.(Today) </span>
										</div>
										<!-- <div class="clearfix"></div> -->
									</div>

									<div class="item-icon float-l">
										<span class=""> <i class="fas fa-chart-line f6 font-50"></i>
										</span>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="box-bottom">
									<i class="far fa-clock f6"></i> <span
										class="update-time eng f6 font-12"> Update 02:15 pm </span>
								</div>
							</div>
							<div class="main-top-box box-clr-4 br-3">
								<div class="box-top">

									<div class="item-title float-l">
										<div class="item-count">
											<span class="font-40 bold f6"> <i
												class="fab fa-product-hunt"></i> 6
											</span>
										</div>
										<div class="item-tag">
											<span class="bold f6"> Member Reg.(Today) </span>
										</div>
										<!-- <div class="clearfix"></div> -->
									</div>

									<div class="item-icon float-l">
										<span class=""> <i class="fas fa-chart-line f6 font-50"></i>
										</span>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="box-bottom">
									<i class="far fa-clock f6"></i> <span
										class="update-time eng f6 font-12"> Update 02:15 pm </span>
								</div>
							</div>
						</div>
						<!-- total box 끝나는 부분 -->

						<!-- if부분 -->
						<c:if test="${template eq 'users' && mypage eq 'list'}">
							<%@ include file="../users/getUsersListInc.jsp"%>
						</c:if>

						<c:if test="${template eq 'users' && mypage eq 'view'}">
							<%@ include file="../users/getUsersViewInc.jsp"%>
						</c:if>

						<c:if test="${template eq 'users' && mypage eq 'modify'}">
							<%@ include file="../users/getUsersModifyInc.jsp"%>
						</c:if>

						<c:if test="${template eq 'board' && mypage eq 'list'}">
							<%@ include file="../board/getBoardListInc.jsp"%>
						</c:if>

						<c:if test="${template eq 'board' && mypage eq 'insert'}">
							<%@ include file="../board/setBoardInc.jsp"%>
						</c:if>

						<!-- product -->
						<c:if test="${template eq 'product' && mypage eq 'list'}">
							<%@ include file="../product/getProductListInc.jsp"%>
						</c:if>

						<!-- category -->
						<c:if test="${template eq 'product' && mypage eq 'category'}">
							<%@ include file="../product/getCategoryListInc.jsp"%>
						</c:if>
						
						<!-- insert -->
						<c:if test="${template eq 'product' && mypage eq 'insert'}">
							<%@ include file="../product/getProductInsertInc.jsp"%>
						</c:if>
						
						<!-- view -->
						<c:if test="${template eq 'product' && mypage eq 'view'}">
							<%@ include file="../product/getProductViewInc.jsp"%>
						</c:if>
						
						<!-- view site 정보 상세 보기 -->
						<c:if test="${template eq 'siteInfo' && mypage eq 'view'}">
							<%@ include file="../siteInfo/getsiteInfoInc.jsp"%>
						</c:if>
						
						<!-- scheduler 보는 부분 -->
						<c:if test="${template eq 'scheduler' && mypage eq 'view'}">
							<%@ include file="../scheduler/getSchedulerInc.jsp"%>
						</c:if>
						



						<!-- //if -->
					</div>
				</div>

			</aside>
		</div>
	</main>
	<footer></footer>

</body>
<script src="../js/common.js"></script>

</html>