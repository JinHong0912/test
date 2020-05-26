<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/css/product/product.css">

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
                        	<i class="fal fa-minus gray float-l"></i>
                            <input type="number" value="1" name="num" class="num input-50 float-l align" min="0" />
                            <i class="fal fa-plus gray float-l"></i>
 						 	<div class="clearfix"></div>
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

<script src="/js/product/productDetail.js"></script>

    
    
    
    