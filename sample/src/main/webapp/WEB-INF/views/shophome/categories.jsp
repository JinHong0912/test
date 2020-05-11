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


        /* categories */

        .categories-wrap {
            display: flex;
            justify-content: space-between;
        }

        .categories-left {
            flex-basis: 20%;
        }

        .categories-main {
            flex-basis: 80%;
        }


        /* featured */

        .featured-wrap {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .featured-item {
            flex-basis: 32.5%;
            height: auto;
            border: 1px solid #eee;
        }

        .featured-img img {
            display: inline-block;
            width: 100%;
            cursor: pointer;
        }

        .cart-icon {
            display: none;

            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);

            background-color: tomato;
            padding: 10px 14px;
            border-radius: 3px;
        }

        .featured-img:hover .cart-icon {
            display: inline-block;
        }

        .featured-img:hover i {
            color:#fff;
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
                    <p class="font-12">Home | Men</p>
                    <h2 class="margin-t10 margin-b30">MEN</h2>
                </div>
                <div class="categories-wrap padding-lr40">
                    <div class="categories-left">
                        <div class="categories">
                            <h3 class="black-70 font-18 margin-b20">CATEGORIES</h3>
                            <ul>
                                <li class="black-70 font-16 bold-500 margin-b10">Men</li>
                                <li class="black-70 font-16 bold-500 margin-b10">Women</li>
                                <li class="black-70 font-16 bold-500 margin-b10">Kids</li>
                                <li class="black-70 font-16 bold-500 margin-b10">Accessories</li>
                            </ul>
                        </div>
                        <div class="brand">
                            <h3 class="black-70 font-18 margin-t50 margin-b20">BRAND</h3>
                            <ul>
                                <li class="black-70 font-16 bold-500 margin-b10">Accessories</li>
                                <li class="black-70 font-16 bold-500 margin-b10">Jeans</li>
                                <li class="black-70 font-16 bold-500 margin-b10">Jumper</li>
                                <li class="black-70 font-16 bold-500 margin-b10">Leather</li>
                                <li class="black-70 font-16 bold-500 margin-b10">Shoes</li>
                                <li class="black-70 font-16 bold-500 margin-b10">TShirts</li>
                            </ul>
                        </div>
                    </div>
                    <div class="categories-main">
                        <div class="categories-title">
                            <p class="black-70 font-17 margin-b20 bold-600">Categories Top Banner</p>
                            <p class="font-15 line-150">standard dummy text ever since the 1500s, when an unknown
                                printer took a galley of type and scrambled it to make a type specimen book.</p>
                            <hr class="hr margin-tb30">
                        </div>
                        <div class="categories-content">
                            <p class="font-20 bold-700">FEATURED PRODUCTS</p>
                            <div class="featured-content">
                                <div class="featured-wrap">
                                    <div class="featured-item bg-white margin-t10">
                                        <div class="featured-img pos-rel padding-a10">
                                            <a href="product.html"><img src="images/shopimages/1.jpg" /></a>
                                            <span class="cart-icon">
                                                <a href=""><i class="fal fa-shopping-bag font-30 black-70"></i></a>
                                            </span>
                                        </div>
                                        <hr class="hr">
                                        <div class="featured-text padding-a10 align">
                                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Extreme Pak
                                                Neon Pink
                                                Leopard Print Shopping</h3>
                                                <p class="nanum font-14 bold-600">\20,000(배송비)</p>
                                                <p class="nanum font-13 margin-t10">
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star black-30"></i>
                                                </p>
                                        </div>
                                    </div>
                                    <div class="featured-item bg-white margin-t10">
                                        <div class="featured-img pos-rel padding-a10">
                                            <a href="product.html"><img src="images/shopimages/2.jpg" /></a>
                                            <span class="cart-icon">
                                                <a href=""><i class="fal fa-shopping-bag font-30 black-70"></i></a>
                                            </span>
                                        </div>
                                        <hr class="hr">
                                        <div class="featured-text padding-a10 align">
                                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Extreme Pak
                                                Neon Pink
                                                Leopard Print Shopping</h3>
                                                <p class="nanum font-14 bold-600">\20,000(배송비)</p>
                                                <p class="nanum font-13 margin-t10">
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star black-30"></i>
                                                </p>
                                        </div>
                                    </div>
                                    <div class="featured-item bg-white margin-t10">
                                        <div class="featured-img pos-rel padding-a10">
                                            <a href="product.html"><img src="images/shopimages/3.jpg" /></a>
                                            <span class="cart-icon">
                                                <a href=""><i class="fal fa-shopping-bag font-30 black-70"></i></a>
                                            </span>
                                        </div>
                                        <hr class="hr">
                                        <div class="featured-text padding-a10 align">
                                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Extreme Pak
                                                Neon Pink
                                                Leopard Print Shopping</h3>
                                                <p class="nanum font-14 bold-600">\20,000(배송비)</p>
                                                <p class="nanum font-13 margin-t10">
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star black-30"></i>
                                                </p>
                                        </div>
                                    </div>

                                    <div class="featured-item bg-white margin-t10">
                                        <div class="featured-img pos-rel padding-a10">
                                            <a href="product.html"><img src="images/shopimages/4.jpg" /></a>
                                            <span class="cart-icon">
                                                <a href=""><i class="fal fa-shopping-bag font-30 black-70"></i></a>
                                            </span>
                                        </div>
                                        <hr class="hr">
                                        <div class="featured-text padding-a10 align">
                                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Extreme Pak
                                                Neon Pink
                                                Leopard Print Shopping</h3>
                                                <p class="nanum font-14 bold-600">\20,000(배송비)</p>
                                                <p class="nanum font-13 margin-t10">
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star black-30"></i>
                                                </p>
                                        </div>
                                    </div>
                                    <div class="featured-item bg-white margin-t10">
                                        <div class="featured-img pos-rel padding-a10">
                                            <a href="product.html"><img src="images/shopimages/5.jpg" /></a>
                                            <span class="cart-icon">
                                                <a href=""><i class="fal fa-shopping-bag font-30 black-70"></i></a>
                                            </span>
                                        </div>
                                        <hr class="hr">
                                        <div class="featured-text padding-a10 align">
                                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Extreme Pak
                                                Neon Pink
                                                Leopard Print Shopping</h3>
                                                <p class="nanum font-14 bold-600">\20,000(배송비)</p>
                                                <p class="nanum font-13 margin-t10">
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star black-30"></i>
                                                </p>
                                        </div>
                                    </div>
                                    <div class="featured-item bg-white margin-t10">
                                        <div class="featured-img pos-rel padding-a10">
                                            <a href="product.html"><img src="images/shopimages/6.jpg" /></a>
                                            <span class="cart-icon">
                                                <a href=""><i class="fal fa-shopping-bag font-30 black-70"></i></a>
                                            </span>
                                        </div>
                                        <hr class="hr">
                                        <div class="featured-text padding-a10 align">
                                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Extreme Pak
                                                Neon Pink
                                                Leopard Print Shopping</h3>
                                                <p class="nanum font-14 bold-600">\20,000(배송비)</p>
                                                <p class="nanum font-13 margin-t10">
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star tomato"></i>
                                                    <i class="fas fa-star black-30"></i>
                                                </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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