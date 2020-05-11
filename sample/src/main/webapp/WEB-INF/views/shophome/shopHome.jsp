<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/head.jspf"%>

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
            color:#fff;
        }

        /* hero */

        .hero-area {
            width: 100%;
            height: 460px;
            display: flex;
            justify-content: space-between;
        }

        .hero-wrap {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 460px;
        }

        .hero-content {
            padding: 0 50px;
            line-height: 1.5
        }

        .home-btn {
            background-color: #000;
            color: #fff;
            padding: 15px 20px;
            margin-top: 10px;
            font-size: 15px;
            border-radius: 3px;
        }


        /* other */

        .other-area {
            width: 100%;
            height: 300px;
        }

        /* featured */

        .featured-wrap {
            display: flex;
            justify-content: space-between;
        }

        .featured-item {
            flex-basis: 19%;
            height: auto;
        }

        .featured-img img {
            display: inline-block;
            width: 100%;
        }

        /* banner */

        .banner-wrap {
            display: flex;
            justify-content: space-between;
        }

        .banner-item {
            flex-basis: 48%;
            ;
        }

        .banner-item img {
            width: 100%;
        }

        /* new */

        .new-wrap {
            display: flex;
            justify-content: space-between;
        }

        .new-item {
            flex-basis: 19%;
            height: auto;
        }

        .new-img img {
            display: inline-block;
            width: 100%;
        }

        .new-wrap {
            display: flex;
            justify-content: space-between;
        }

        /* special */

        .special-wrap {
            display: flex;
            justify-content: space-between;
        }

        .special-item {
            flex-basis: 32%;
        }

        .special-item img {
            width: 100%;
        }


        /* next */

        .next-wrap {
            display: flex;
            justify-content: space-between;
        }

        .next-item {
            flex-basis: 15.5%;
        }

        .next-item img {
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
                    <a href="/shophome/categories.jsp" class="menu font-15 black-70 bold-600">MEN</a>
                    <a href="#" class="menu font-15 black-70 bold-600">WOMEN</a>
                    <a href="#" class="menu font-15 black-70 bold-600">KIDS</a>
                    <a href="#" class="menu font-15 black-70 bold-600">ACCESSORIES <i class="fal fa-chevron-down"></i></a>
                </div>
            </div>
        </div>
    </header>

    <main class="margin-t20">
        <div class="container">
            <div class="hero-area bg-white padding-a20">
                <div class="hero-img">
                    <img src="images/shopimages/man.jpg" />
                </div>
                <div class="hero-img padding-lr20">
                    <div class="hero-wrap">
                        <div class="hero-content">
                            <h3 class="tomato">#LEVIS STRAUSS</h3>
                            <h1>COLLECTION ITEMS</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed quos, pariatur facere
                                doloremque ea dicta.</p>
                            <button class="home-btn pop">SHOP NOW</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <main class="margin-t80">
        <div class="container">
            <div class="featured-area">
                <div class="featured-title">
                    <h2 class="upper align black-70 font-28 margin-b20">Featured Products</h2>
                </div>
                <div class="featured-content">
                    <div class="featured-wrap">
                        <div class="featured-item bg-white">
                            <div class="featured-img padding-a10">
                                <img src="images/shopimages/1.jpg" />
                            </div>
                            <hr class="hr">
                            <div class="featured-text padding-a20 align">
                                <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Extreme Pak Neon Pink
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
                        <div class="featured-item bg-white">
                            <div class="featured-img padding-a10">
                                <img src="images/shopimages/2.jpg" />
                            </div>
                            <hr class="hr">
                            <div class="featured-text padding-a20 align">
                                <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Maxam Solid Genuine
                                    Leather Work</h3>
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
                        <div class="featured-item bg-white">
                            <div class="featured-img padding-a10">
                                <img src="images/shopimages/3.jpg" />
                            </div>
                            <hr class="hr">
                            <div class="featured-text padding-a20 align">
                                <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Ladies' Sheer V-Neck Tee
                                    </h3>
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
                        <div class="featured-item bg-white">
                            <div class="featured-img padding-a10">
                                <img src="images/shopimages/4.jpg" />
                            </div>
                            <hr class="hr">
                            <div class="featured-text padding-a20 align">
                                <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Jersey Short Sleeve
                                    Shirt</h3>
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
                        <div class="featured-item bg-white">
                            <div class="featured-img padding-a10">
                                <img src="images/shopimages/5.jpg" />
                            </div>
                            <hr class="hr">
                            <div class="featured-text padding-a20 align">
                                <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Italian Stone Design
                                    Genuine Leather Personal</h3>
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
    </main>

    <main class="margin-t50">
        <div class="container">
            <div class="banner-area">
                <div class="banner-wrap">
                    <div class="banner-item">
                        <img src="images/shopimages/banner1.jpg" />
                    </div>
                    <div class="banner-item">
                        <img src="images/shopimages/banner2.jpg" />
                    </div>
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
                    <div class="new-item bg-white">
                        <div class="new-img padding-a10">
                            <img src="images/shopimages/6.jpg" />
                        </div>
                        <hr class="hr">
                        <div class="new-text padding-a20 align">
                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Extreme Pak Neon Pink
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
                    <div class="new-item bg-white">
                        <div class="new-img padding-a10">
                            <img src="images/shopimages/7.jpg" />
                        </div>
                        <hr class="hr">
                        <div class="new-text padding-a20 align">
                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Maxam Solid Genuine
                                Leather Work</h3>
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
                    <div class="new-item bg-white">
                        <div class="new-img padding-a10">
                            <img src="images/shopimages/8.jpg" />
                        </div>
                        <hr class="hr">
                        <div class="new-text padding-a20 align">
                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Ladies' Sheer V-Neck Tee
                                </h3>
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
                    <div class="new-item bg-white">
                        <div class="new-img padding-a10">
                            <img src="images/shopimages/9.jpg" />
                        </div>
                        <hr class="hr">
                        <div class="new-text padding-a20 align">
                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Jersey Short Sleeve
                                Shirt</h3>
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
                    <div class="new-item bg-white">
                        <div class="new-img padding-a10">
                            <img src="images/shopimages/10.jpg" />
                        </div>
                        <hr class="hr">
                        <div class="new-text padding-a20 align">
                            <h4 class="item-title nanum font-14 margin-b10 line-150">[DEMO] Italian Stone Design
                                Genuine Leather Personal</h3>
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
    </main>

    <main class="margin-t50">
        <div class="container">
            <div class="special-area">
                <div class="special-wrap">
                    <div class="special-item">
                        <img src="images/shopimages/special1.jpg" />
                    </div>
                    <div class="special-item">
                        <img src="images/shopimages/special2.jpg" />
                    </div>
                    <div class="special-item">
                        <img src="images/shopimages/special3.jpg" />
                    </div>
                </div>
            </div>
        </div>
    </main>

    <main class="margin-t50">
        <div class="container">
            <div class="next-area bg-white padding-tb50">
                <div class="next-title">
                    <h2 class="upper align black-70 font-28 margin-b20">#Next Other items</h2>
                    <p class="align bold-500 font-18 black-70 margin-b50">Find out 3dcart next on instagram. Follow us
                        to get the latest update from Atlantix Digital</p>
                </div>
                <div class="next-wrap padding-lr50">
                    <div class="next-item">
                        <img src="images/shopimages/s1.jpg" />
                    </div>
                    <div class="next-item">
                        <img src="images/shopimages/s2.jpg" />
                    </div>
                    <div class="next-item">
                        <img src="images/shopimages/s3.jpg" />
                    </div>
                    <div class="next-item">
                        <img src="images/shopimages/s4.jpg" />
                    </div>
                    <div class="next-item">
                        <img src="images/shopimages/s5.jpg" />
                    </div>
                    <div class="next-item">
                        <img src="images/shopimages/s6.jpg" />
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
   

<%@include file="../include/foot.jspf"%>