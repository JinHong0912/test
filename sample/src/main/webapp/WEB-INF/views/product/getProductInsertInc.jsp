<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/css/product/product.css">
<script src="/ckeditor/ckeditor.js"></script>
<style>
.img-size{
width: 200px;
}



</style>




<!-- 게시판 설정 보기 -->
<div id="main-board" class="padding-a-20 margin-t20 bg-color-8 br-3">
    <div class="title-wrap">
        <span class="font-18 bold noto">3. 상품 등록 페이지</span>
        <span class="noto font-16">
            
        </span>
    </div>
    
    <div class="search-wrap margin-tb-20">
        <span class="font-16 bold">
            <button type="button" class="btn-80 bold bo-pink" 
            	onClick="location.href='/product'">상품목록보기</button>
            <button type="button" class="btn-80 bold bo-pink" 
            	onClick="location.href='/product/setProduct'">상품등록</button>
        </span>
        <span class="">
            
        </span>
    </div>

    <div id="category-view" class="margin-t30">
        <table>
        <form method="post" action="/product/setProduct" enctype="multipart/form-data">
        	<tr><td colspan="2" class="tbl-line"></td></tr>
            
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 카테고리
            	</td>
            	<td class="w-35 padding-lr-5">
            		  <select name="majorName" id="majorName" 
            		  	class="majorCateSelected sel-150 noto">
            		  	<option value="">선택하세요</option>  
            		  </select>
            		  
            		  <select name="minorName" id="minorName" 
            		  	class="minorCateSelected sel-150 noto">
            		  	<option value="">선택하세요</option>  
            		  </select>
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품판매자
            	</td>
            	<td class="w-35 padding-lr-5">
            		<input type="text" name="" id="" class="input-200 padding-lr-5" 
            			autocomplete="off" value="${sessionScope.userName}" readonly />          		
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 이름
            	</td>
            	<td colspan="3" class="w-85 padding-lr-5">
            		<input type="text" name="productName" id="productName" class="input-s-full padding-lr-5" 
            			autocomplete="off" />
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 가격
            	</td>
            	<td class="w-35 padding-lr-5">
            		  <input type="text" name="productPrice" id="productPrice" class="ralign input-100 padding-lr-5" 
            			autocomplete="off" value="0"/> 원
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품상태 / 할인율
            	</td>
            	<td class="w-35 padding-lr-5">
            		<select name="productStatus" id="productStatus" class="sel-150 noto">
            		  	<option value="new" selected>신상품</option>  
            		  	<option value="sale">할인품</option>
					</select>
            		  
            		<input type="text" name="productDC" id="productDC" 
            		class="ralign input-100 padding-lr-5"
            		value="0" /> %
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 총 수량
            	</td>
            	<td class="w-35 padding-lr-5">
            		  <input type="text" name="productAmount" id="productAmount" class="ralign input-100 padding-lr-5" 
            			autocomplete="off" value="0"/> 개
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 위치
            	</td>
            	<td class="w-35 padding-lr-5">
            		<select name="productDisplay" id="productDisplay" class="sel-150 noto">
            		  	<option value="basic" selected>기본</option>
            		  	<option value="banner">배너</option>  
            		  	<option value="main">메인</option>
					</select>
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		(기본) 상품 평점
            	</td>
            	<td class="w-35 padding-lr-5">
            		  <input type="text" name="productStar" id="productStar" class="ralign input-100 padding-lr-5" 
            			autocomplete="off" value="0"/> 점
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 배송비 여부
            	</td>
            	<td class="w-35 padding-lr-5">
            		<select name="productDelivery" id="productDelivery" class="sel-150 noto">
            		  	<option value="free" selected>배송비무료</option>
            		  	<option value="2000">배송비있음(2000원)</option>  
            		  	<option value="3000">배송비있음(3000원)</option>
					</select>
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 색상
            	</td>
            	<td class="w-35 padding-lr-5">
            		  <input type="text" name="productColor" id="productColor" 
            		  	class="input-100 padding-lr-5" />
            		  <span class="tomato font-12 bold">세미콜론(;)으로 구분해서 입력해 주세요.</span> 
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 크기
            	</td>
            	<td class="w-35 padding-lr-5">
            		<input type="text" name="productSize" id="productSize" 
            		  	class="input-100 padding-lr-5" />
            		<span class="tomato font-12 bold">세미콜론(;)으로 구분해서 입력해 주세요.</span>
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 이미지
            	</td>
            	<td colspan="3" class="w-85 padding-lr-5">
            		<input multiple="multiple" type="file" name="product-img" id="product-img" class="padding-lr-5" 
            			autocomplete="off" />          		
            	</td>
            </tr>
            <tr class="tr-45">
            	<td colspan="3" class="w-85 padding-lr-5">
            		<div class="imgs-wrap"></div>
            	</td>
            </tr>
            
            <tr class="tr-45">
            	<td colspan="4" class="bg-color-3 padding-lr-5 align f6">
            		상 품 상 세 설 명
            	</td>
            </tr>
            
            <tr class="tr-45">
            	<td colspan="4">
            		<textarea name="productDetail" id="" class="input-full-text margin-t20 kor bold" placeholder=""></textarea>
            		<!-- <script>
						CKEDITOR.replace( 'editor' );
						CKEDITOR.config.height = 200;
					</script> -->
            	</td>
            </tr>
        
        </table>
        <div class="btn-grp margin-t20">
        	<div class="btn-left float-l">
        		<button type="button" class="btn-50 bo-blue font-12" onClick="location.href='/product'">
        			목록
        		</button>
        	</div>
        	
        	<div class="btn-right float-r">
        		<button type="submit" id="btn" class="btn-70 bo-blue font-12">
        			상품등록
        		</button>
        	</div>
        	<div class="clearfix"></div>
        </div>
        </form>
    </div>
</div>

<!-- CKeditor -->
<!-- <script>
initSample();
</script> -->


<script src="/js/product/product.js"></script>
