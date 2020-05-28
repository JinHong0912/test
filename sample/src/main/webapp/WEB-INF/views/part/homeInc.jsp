<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../part/head.jsp"%>
<style>
.hero-warp {
	display: flex;
}

.hero-left, .hero-right {
	width: 50%;
}

.hero-left img {
	width: 100%;
	height: 100%
}

.hero-right {
	width: 100%;
	height: 100%;
	padding: 50px 40px;
	background-color: #fff;
}

.jalign {
	text-align: justify;
	line-height: 2;
}

.main-btn {
	background-color: tomato;
	color: #fff;
	width: 130px;
	height: 40px;
	font-size: 16px;
	font-weight: 700;
	border-radius: 3px;
	margin-top: 20px;
}

.banner-wrap {
	display: flex;
	justify-content: space-between;
	/* 	height: 800px; */
}

.banner-item {
	flex-basis: 49%;
}

.banner-item img {
	width: 100%;
	height: 140px;
}

/* new */
.new-wrap {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.new-item {
	flex-basis: 19%;
	height: auto;
	margin-top: 15px;
}

.new-img img {
	display: inline-block;
	width: 100%;
}

.new-wrap {
	display: flex;
	justify-content: space-between;
}
</style>

<link rel="stylesheet" href="/owl/owl.carousel.css">
<link rel="stylesheet" href="/owl/owl.theme.default.css">
<main class="margin-t20">
	<div class="container">
		<!-- owl-carousel 들어가는 부분 -->
		<div class="owl-carousel owl-theme">
			<!-- for -->
			<c:forEach items="${owl}" var="owl">
				<div class="hero-wrap">
					<div class="hero-left">
						<img src="/images/product/${fn:split(owl.safeFile, ';')[1]}">
					</div>
					<div class="hero-right">
						<h1 class="noto bold-700">${owl.productName}</h1>
						<p class="jalign margin-t10">${owl.productDetail}</p>
						<button class="main-btn"
							onClick="location.href='getProductDetail?majorName=${owl.majorName}&minorName=${owl.minorName}&pid=${owl.pid}'">SHOP
							NOW</button>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- owl-carousel 들어가는 부분 -->
	</div>
</main>

<main class="margin-t80">
	<div class="container">
		<div class="featured-area">
			<div class="featured-title">
				<h2 class="upper align black-70 font-28 margin-b20">Featured
					Products</h2>
			</div>
			<div class="featured-content">
				<div class="featured-wrap">
					<c:forEach items="${basic}" var="basic">
						<div class="featured-item bg-white">
							<div class="featured-img padding-a10">
								<a	href="/getProductDetail?majorName=${basic.majorName}&minorName=${basic.minorName}&pid=${basic.pid}">
								<img src="/images/product/${fn:split(basic.safeFile, ';')[1]}">
							</div>
							<hr class="hr">
							<div class="featured-text padding-a20 align">
								<h3 class="item-title nanum font-14 margin-b10 line-150">
										${basic.productName}
									</h3>
									<p class="nanum font-14 bold-600">
										&#8361;${basic.productPrice}원( ${basic.productDelivery} )</p>
									</p>
									<p class="nanum font-13 margin-t10">
										<c:forEach begin="1" end="${basic.productStar}" var="star">
											<i class="fas fa-star tomato"></i>
										</c:forEach>
		
										<c:forEach begin="1" end="${5 - basic.productStar}">
											<i class="fas fa-star black-30"></i>
										</c:forEach>										
									</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</main>

<main class="margin-t50">
	<div class="container">
		<div class="banner-area">
			<div class="banner-wrap">
				<c:forEach items="${banner}" var="banner">
					<div class="banner-item">
						<img src="/images/product/${fn:split(banner.safeFile, ';')[0]}">
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</main>

<main class="margin-t80">
	<div class="container">
		<div class="new-title">
			<h2 class="upper align black-70 font-28 margin-b20">New Releases</h2>
		</div>
		<div class="new-content">
			<div class="new-wrap">
				<c:forEach items="${news}" var="news">
					<div class="new-item bg-white">
						<div class="new-img padding-a10">
							<a
								href="/getProductDetail?majorName=${news.majorName}&minorName=${news.minorName}&pid=${news.pid}">
								<img src="/images/product/${fn:split(news.safeFile, ';')[0]}">
							</a>
						</div>
						<hr class="hr">
						<div class="new-text padding-a20 align">
							<h3 class="item-title nanum font-14 margin-b10 line-150">
								${news.productName}</h3>
							<p class="nanum font-14 bold-600">&#8361;${news.productPrice}원(
								${news.productDelivery} )</p>
							<p class="nanum font-13 margin-t10">
								<c:forEach begin="1" end="${news.productStar}" var="star">
									<i class="fas fa-star tomato"></i>
								</c:forEach>

								<c:forEach begin="1" end="${5 - news.productStar}">
									<i class="fas fa-star black-30"></i>
								</c:forEach>

							</p>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
</main>

<main class="margin-t50">
	<div class="container">
		<div class="special-area">
			<div class="special-wrap">
				<div class="special-item">
					<img src="/images/shopimages/special1.jpg" />
				</div>
				<div class="special-item">
					<img src="/images/shopimages/special2.jpg" />
				</div>
				<div class="special-item">
					<img src="/images/shopimages/special3.jpg" />
				</div>
			</div>
		</div>
	</div>
</main>

<main class="margin-t50">
	<div class="container">
		<div class="next-area bg-white padding-tb50">
			<div class="next-title">
				<h2 class="upper align black-70 font-28 margin-b20">#Next Other
					items</h2>
				<p class="align bold-500 font-18 black-70 margin-b50">Find out
					3dcart next on instagram. Follow us to get the latest update from
					Atlantix Digital</p>
			</div>
			<div class="next-wrap padding-lr50">
				<div class="next-item">
					<img src="/images/shopimages/s1.jpg" />
				</div>
				<div class="next-item">
					<img src="/images/shopimages/s2.jpg" />
				</div>
				<div class="next-item">
					<img src="/images/shopimages/s3.jpg" />
				</div>
				<div class="next-item">
					<img src="/images/shopimages/s4.jpg" />
				</div>
				<div class="next-item">
					<img src="/images/shopimages/s5.jpg" />
				</div>
				<div class="next-item">
					<img src="/images/shopimages/s6.jpg" />
				</div>
			</div>
		</div>
	</div>
</main>
<script src="/js/product/homeInc.js"></script>
<script src="/owl/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		var owl = $('.owl-carousel');
		owl.owlCarousel({
			margin : 10,
			nav : false,
			dots : false,
			loop : true,
			autoplay : true,
			autoplayTimeout : 2000,
			autoplayHoverPause : true,
			items : 1
		});
	});
</script>



