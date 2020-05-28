<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="/css/product/product.css">

<style>
		.small-wrap{
			display: flex;		
			justify-content: space-between;
		}
		
		.small-img{
			flex-basis: 19%;
			height: 110px;
			margin-top: 5px;
			background-color: #f7f7f7;
			
		}
		.small-img img{
			width: 100%;
			height: 100%;
			cursor: pointer;
		}

</style>


 <main class="margin-t20">
        <div class="container">
            <div class="categories-area bg-white padding-tb50">
                <div class="categories-title align">
                   	<p class="font-12">Home | ${majorName}</p>
                    <h2 class="margin-t10 margin-b30">${minorName}</h2>
                </div>
                <div class="product-wrap padding-lr40">
                    <div class="product-left">
                        <div class="product-img">
                            <img src="/images/product/${fn:split(pView.safeFile, ';')[0]}">
                        </div>
                        <div class="small-wrap">
                        	<c:forTokens items="${pView.safeFile}" delims=";" var="item">
	                        	<div class="small-img">
	                        		<img src="images/product/${item}" />
	                        	</div>
                        	</c:forTokens>
                        </div>
                    </div>
                    <div class="product-right">
                        <h2 class="margin-b10 roboto">${pView.productName}</h2>
                        <p class="nanum font-13 margin-t10">
                            <span class="star">
                            
                            <c:forEach begin="1" end="${pView.productStar}" var="star">
                                <i class="fas fa-star tomato"></i>
                            </c:forEach>
                                
                             <c:forEach begin="1" end="${5 - pView.productStar}" var="nono-star">
                                <i class="fas fa-star black-30"></i>
                            </c:forEach>   
                            </span>
                            <span class="review roboto margin-l20">0 Reviews</span>
                            <span class="review margin-l20"><a href="#" class="roboto">Write a Review</a></span>
                        </p>
                        <p class="nanum font-13 margin-t20">
                            <span class="noto bold-700 font-20 tomato">${pView.productDC}%</span>
                            <span class="roboto font-20 bold-700">
                            	<del><fmt:formatNumber value="${pView.productPrice}" pattern="#,##0" /> 원</del>
                            </span>
                        </p>
                        <p class="nanum font-13">
                            <span class="roboto font-28 bold-700">
                               <fmt:formatNumber value="${pView.productPrice - ( pView.productPrice * ( pView.productDC / 100 ) )}" pattern="#,##0" /> 원<br>
                            </span>
                        </p>
                        <p class="noto bold-700 font-20 margin-t30 margin-b10">옵션선택</p>
                        <hr class="hr margin-b20">
                        <span class="noto bold-700 font-18">사이즈</span>
                        <select class="sel-full margin-t10 margin-b20">
                    	    <c:forTokens items="${pView.productSize}" delims=";" var="item">
            					<option value ="${item}">${item}</option>
         			   		</c:forTokens>      
                        </select>

                        <span class="noto bold-700 font-18">색상</span>
                        <select class="sel-full margin-t10 margin-b20">
	                        <c:forTokens items="${pView.productColor}" delims=";" var="item">
	            				<option value ="${item}">${item}</option>
	           		 		</c:forTokens>
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
                            <span class="noto bold-700 font-24">
                            	<span class= "total">
		                            <fmt:formatNumber value="${pView.productPrice - ( pView.productPrice * ( pView.productDC / 100 ) )}" pattern="#,##0" /> 원<br>
                        		</span>
                            		<input type ="hidden" class="price" value="${pView.productPrice - ( pView.productPrice * ( pView.productDC / 100 ) )}"/>
                            </span> 
                            	<div class="clearfix"></div>
                        </p>
                        <p class="margin-t20">
                            <button class="btn-half float-l bo-gray font-20 bold-700 noto" onClick="location.href='/setProductCart?majorName=${majorName}&minorName=${minorName}'">장바구니</button>
                            <button class="btn-half font-20 bg-tomato float-r white bold-700 noto bo-trans">구매하기</button>
                            <div class="clearfix"></div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </main>

<script>
		$(function(){
			$(".small-img img").mouseover(function(){
				var source = $(this).attr("src");
// 				alert(source);

				$(".product-img img").attr({src : source});
			});
		});



</script>

<!-- 갯수가 많아 질수록 값이 곱해지는 부분 -->
<script>
	$(function(){

			/* 	쉼표 찍어 주는 것 중요 */	
			function numberFormat(inputNumber) {
    	   		return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    		}

		$(".fa-plus").click(function(){
			var n = $(".num").val();
			$(".num").val((n * 1) + 1);

			var a = eval($(".price").val() * ((n * 1) + 1) ); // 금액 * 증감값 =???
			$(".total").html(numberFormat(a) + "원");
		});

		$(".fa-minus").click(function(){
			var n = $(".num").val();// 현재 들어가 있는 값
			
			if( n < 2){
				n = 2;
			}

			var a = eval($(".price").val() * ((n * 1) - 1) ); // 금액 * 증감값 =???
			$(".total").html(numberFormat(a) + "원");

		});
	});



</script>




<script src="/js/product/productDetail.js"></script>

    
    
    
    