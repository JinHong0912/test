<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/home/reset.css">
    <link rel="stylesheet" href="/css/home/style.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
    
    <!-- js -->
   
    <script src="https://code.jquery.com./jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="/js/common.js"></script>
    
    
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