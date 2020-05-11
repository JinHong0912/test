<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/head.jspf"%>
														
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel="stylesheet" href="css/home/reset.css">
    <link rel="stylesheet" href="css/home/style.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
    <style>
        .container {
            width: 1200px;
            margin: 0 auto;
        }

        .adv-area {
            width: 100%;
            height: 50px;
            line-height: 50px;
        }

        .logo-wrap {
            display: flex;
            justify-content: space-between;
        }

        .logo-area {
            width: 100%;
        }

        /* sub menu */

        .sub-area {
            width: 100%;
            padding: 20px 0;
        }

        .sub-area a {
            padding: 20px 30px;
        }

        .sub-area a:hover {
            background-color: tomato;
            transition: 0.3s;
            color: #fff;
        }


        /* product */
        .product-wrap {
            display: flex;
            justify-content: space-between;
        }

        .product-left {
            flex-basis: 50%;
        }

        .product-right {
            flex-basis: 50%;
            padding-left: 30px;
        }

        .product-img img {
            width: 100%;
        }


        /* footer */

        .footer-wrap {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 25px;
        }

        .footer-item {
            flex-basis: 30%;
        }

        /* fmenu */

        .fmenu-wrap {
            display: flex;
            justify-content: space-around;
        }

        .fmenu-item {
            flex-basis: 24%;
        }

        .cart {
            position: relative;
        }

        .cart-count {
            display: inline-block;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background-color: #f00;
            color: #fff;
            text-align: center;
            line-height: 20px;
            font-size: 12px;

            position: absolute;
            top: -20px;
            right: -10px;
        }
    </style>
</head>

<body class="bg-gray">
    <div class="adv-area">
        <div class="container">
            <div class="">
                <span class="noto">
                    <i class="far fa-shipping-fast"></i>
                    50,000이상 구매시 무료로 배송해 드립니다.
                </span>
                <span class="noto float-r margin-l20">
                    <a href="#">마이페이지</a>
                </span>
                <span class="noto float-r margin-l20">
                    <a href="#">장바구니</a>
                </span>
                <span class="noto float-r margin-l20">
                    <a href="#">회원가입</a>
                </span>
                <span class="noto float-r margin-l20">
                    <a href="#">로그인</a>
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
                            <span class="font-20 bold-700">010-1234-5678</span>
                        </div>
                        <div class="logo font-32 bold-500">
                            <a href="home.html">Clothing Arrows</a>
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
                    <a href="categories.html" class="menu font-15 black-70 bold-600">MEN</a>
                    <a href="#" class="menu font-15 black-70 bold-600">WOMEN</a>
                    <a href="#" class="menu font-15 black-70 bold-600">KIDS</a>
                    <a href="#" class="menu font-15 black-70 bold-600">ACCESSORIES <i
                            class="fal fa-chevron-down"></i></a>
                </div>
            </div>
        </div>
    </header>

    <main class="margin-t20">
        <div class="container">
            <div class="categories-area bg-white padding-tb50">
                <div class="categories-title align">
                    <p class="font-12 margin-b30">Home | Men</p>
                </div>
                <div class="product-wrap padding-lr40">
                    <div class="product-left">
                        <div class="product-img">
                            <img src="images/shopimages/1.jpg" />
                        </div>
                    </div>
                    <div class="product-right">
                        <h2 class="margin-b10 roboto">Arrow - sample product Neck Tee</h2>
                        <p class="nanum font-13 margin-t10">
                            <span class="star">
                                <i class="fas fa-star tomato"></i>
                                <i class="fas fa-star tomato"></i>
                                <i class="fas fa-star tomato"></i>
                                <i class="fas fa-star tomato"></i>
                                <i class="fas fa-star black-30"></i>
                            </span>
                            <span class="review roboto margin-l20">0 Reviews</span>
                            <span class="review margin-l20"><a href="#" class="roboto">Write a Review</a></span>
                        </p>
                        <p class="nanum font-13 margin-t20">
                            <span class="noto bold-700 font-20 tomato">20%</span>
                            <span class="roboto font-20 bold-700">
                                <del>&#8361;20,000</del>
                            </span>
                        </p>
                        <p class="nanum font-13">
                            <span class="roboto font-28 bold-700">
                                &#8361;15,000
                            </span>
                        </p>
                        <p class="noto bold-700 font-20 margin-t30 margin-b10">옵션선택</p>
                        <hr class="hr margin-b20">
                        <span class="noto bold-700 font-18">사이즈</span>
                        <select class="sel-full margin-t10 margin-b20">
                            <option value="">SIZE</option>
                            <option value="S">S</option>
                            <option value="M">M</option>
                            <option value="L">L</option>
                        </select>

                        <span class="noto bold-700 font-18">색상</span>
                        <select class="sel-full margin-t10 margin-b20">
                            <option value="">COLOR</option>
                            <option value="S">RED</option>
                            <option value="M">GREEN</option>
                            <option value="L">BLUE</option>
                        </select>

                        <span class="noto bold-700 font-18">수량</span>
                        <p class="margin-t10">
                            <input type="number" value="1" class="input-150" min="0" />
                        </p>

                        <p class="margin-t30 float-r">
                            <span class="noto bold-700 font-18 margin-r20">총 상품금액</span>
                            <span class="noto bold-700 font-24">&#8361;20,000</span>
                            <div class="clearfix"></div>
                        </p>
                        <p class="margin-t20">
                            <button class="btn-half float-l bo-gray font-20 bold-700 noto">장바구니</button>
                            <button class="btn-half font-20 bg-tomato float-r white bold-700 noto bo-trans">구매하기</button>
                            <div class="clearfix"></div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </main>



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
                        <span class="font-14 bold-500">2020 Arrow. All Rights Reserved.</span>
                    </div>
                    <div class="footer-item ralign">
                        <span class="font-14 bold-500">3DCart Fashion Theme by Atlantix Digital</span>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>

<%@include file="../include/foot.jspf"%>