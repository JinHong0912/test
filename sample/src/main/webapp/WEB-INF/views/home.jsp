<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ include file = "part/head.jsp" %>

<body class="bg-gray">
    <div class="adv-area">
        <div class="container">
            <div class="">
                <span class="noto">
                    <i class="far fa-shipping-fast"></i>
                    ${siteInfo.siteMainBanner}
                </span>
                <span class="noto float-r margin-l20">
                    <a href="/login">마이페이지</a>
                </span>
                <span class="noto float-r margin-l20">
                    <a href="#">장바구니</a>
                </span>
                <span class="noto float-r margin-l20">
                    <a href="/users/register">회원가입</a>
                </span>
                <span class="noto float-r margin-l20">
                    <a href="/login">로그인</a>
                </span>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <header>
        <div class="container">
            <div class="header-area bg-white">
                <div class="logo-area padding-a40">
                    <div class="logo-wrap">
                        <div class="tel">
                            <i class="far fa-phone-volume font-30 black-70"></i>
                            <span class="font-20 bold-700">${siteInfo.sitePhone}</span>
                        </div>
                        <div class="logo font-32 bold-500">
                            <a href="/">${siteInfo.siteName}</a>
                        </div>
                        <div class="util">
                            <span class="util-icons">
                                <span class="cart margin-r20">
                                    <i class="far fa-shopping-bag font-30 black-70"></i>
                                    <span class="cart-count">3</span>
                                </span>
                            </span>
                            <span class="util-icons margin-l20">
                                <i class="far fa-search font-30 black-70"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <hr class="hr">
                <div class="sub-area align">
                <c:forEach var="majorList" items="${majorList}">
                    <a href="/getCategories?majorName=${majorList.majorName}&minorName=${majorList.minorName}" class="menu font-15 black-70 bold-600">${majorList.majorName} <i class="fal fa-chevron-down"></i></a>
                </c:forEach>
                </div>
            </div>
        </div>
    </header>

    <c:if test = "${template eq 'home' && mypage eq 'view'}">
    	<%@ include file = "part/homeInc.jsp" %>
    </c:if>

	<c:if test = "${template eq 'category' && mypage eq 'view'}">
    	<%@ include file = "part/categoryInc.jsp" %>
    </c:if>
    
    <c:if test = "${template eq 'productDetail' && mypage eq 'view'}">
    	<%@ include file = "part/productDetailInc.jsp" %>
    </c:if>
	
	 <c:if test = "${template eq 'cartList' && mypage eq 'view'}">
    	<%@ include file = "part/setProductCartlInc.jsp" %>
    </c:if>
	

    <footer class="margin-t20">
        <div class="container">
            <div class="footer-area bg-white padding-tb50">
                <div class="fmenu-wrap padding-lr50">
                    <div class="fmenu-item">
                        <h3 class="black-70">CATEGORIES</h3>
                        <ul class="margin-t20">
                            <li class="line-170"><a href="" class="font-15 bold-500">Men</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Women</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Kids</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Accessories</a></li>
                        </ul>
                    </div>
                    <div class="fmenu-item">
                        <h3 class="black-70">BRANDS</h3>
                        <ul class="margin-t20">
                            <li class="line-170"><a href="" class="font-15 bold-500">Men</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Women</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Kids</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Accessories</a></li>
                        </ul>
                    </div>
                    <div class="fmenu-item">
                        <h3 class="black-70">COMPANY</h3>
                        <ul class="margin-t20">
                            <li class="line-170"><a href="" class="font-15 bold-500">Men</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Women</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Kids</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Accessories</a></li>
                        </ul>
                    </div>
                    <div class="fmenu-item">
                        <h3 class="black-70">FOLLOW US</h3>
                        <ul class="margin-t20">
                            <li class="line-170"><a href="" class="font-15 bold-500">Men</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Women</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Kids</a></li>
                            <li class="line-170"><a href="" class="font-15 bold-500">Accessories</a></li>
                        </ul>
                    </div>
                </div>
                <hr class="hr margin-tb30">
                <div class="footer-wrap padding-lr50">
                    <div class="footer-item">
                        <span class="align">
                            <i class="fab fa-cc-visa font-30 black-50"></i>
                        </span>
                        <span class="align">
                            <i class="fab fa-cc-mastercard font-30 black-50"></i>
                        </span>
                        <span class="align">
                            <i class="fab fa-cc-amex font-30 black-50"></i>
                        </span>
                        <span class="align">
                            <i class="fab fa-cc-paypal font-30 black-50"></i>
                        </span>
                    </div>
                    <div class="footer-item align">
                        <span class="font-14 bold-500">${siteInfo.siteCopy}</span>
                    </div>
                    <div class="footer-item ralign">
                        <span class="font-14 bold-500">${siteInfo.siteUrl}</span>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>

<%@ include file = "part/foot.jsp" %>
