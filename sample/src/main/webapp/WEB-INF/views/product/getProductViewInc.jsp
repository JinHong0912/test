<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

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
        <span class="font-18 bold noto">4. 상품 상세 페이지</span>
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
       
        	<tr><td colspan="2" class="tbl-line"></td></tr>
            
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 카테고리
            	</td>
            	<td class="w-35 padding-lr-5 bold">
            		${pView.majorName} > ${pView.minorName}
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품판매자
            	</td>
            	<td class="w-35 padding-lr-5">
            		${pView.productSeller} 		
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 이름
            	</td>
            	<td colspan="3" class="w-85 padding-lr-5">
            		${pView.productName} 
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 가격
            	</td>
            	<td class="w-35 padding-lr-5 bold">
            		 판매가 : <fmt:formatNumber value="${pView.productPrice - ( pView.productPrice * ( pView.productDC / 100 ) )}" pattern="#,##0" /> 원
                	(원가 : <fmt:formatNumber value="${pView.productPrice}" pattern="#,##0" /> 원)
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품상태 / 할인율
            	</td>
            	<td class="w-35 padding-lr-5 bold">
            		${pView.productStatus} / ${pView.productDC} %
					            		  
		      	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 총 수량
            	</td>
            	<td class="w-35 padding-lr-5 bold">
            		 ${pView.productAmount} 개
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 위치
            	</td>
            	<td class="w-35 padding-lr-5">
            		${pView.productDisplay}
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		(기본) 상품 평점
            	</td>
            	<td class="w-35 padding-lr-5 bold">
            		${pView.productStar} 
              	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 배송비 여부
            	</td>
            	<td class="w-35 padding-lr-5 bold">
            			${pView.productDelivery}
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 색상
            	</td>
            	<td class="w-35 padding-lr-5">
            	<select class="sel-150">
            		<c:forTokens items="${pView.productColor}" delims=";" var="item">
            			<option value ="${item}">${item}</option>
            		</c:forTokens>      
            	</select>      		  
            	</td>
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 크기
            	</td>
            	<td class="w-35 padding-lr-5">
            		<select class="sel-150">
            		<c:forTokens items="${pView.productSize}" delims=";" var="item">
            			<option value ="${item}">${item}</option>
            		</c:forTokens>      
            	</select>      		
            		
            	</td>
            </tr>
            <tr><td colspan="2" class="tbl-line"></td></tr>
            <tr class="tr-45">
            	<td rowspan="2" class="w-15 bg-color-3 f6 align bold">
            		상품 이미지
            	</td>
            	<td colspan="3" class="w-85 padding-lr-5">
            		<c:forTokens items="${pView.safeFile}" delims=";" var="item">
            			<img src="../images/product/${item}" alt="${item}" title="${item}" style="width:180px"/>
            		</c:forTokens>  		
            	</td>
            </tr>
         
            <tr class="tr-45">
            	<td colspan="4" class="bg-color-3 padding-lr-5 align f6">
            		상 품 상 세 설 명
            	</td>
            </tr>
            
            <tr class="tr-45">
            	<td colspan="4">
            		<textarea name="" id="editor"></textarea>
            		<script>
						CKEDITOR.replace( 'editor' );
						CKEDITOR.config.height = 200;
					</script>
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
        		<button type="submit" onClick="checkDelete('${pview.pid}');" id="btn" class="btn-70 bo-blue font-12">
        			상품삭제
        		</button>
        	</div>
        	<div class="clearfix"></div>
        </div>
       
    </div>
</div>

<!-- CKeditor -->
<script>
initSample();
</script>
<!-- 상품 삭제  -->

<script src="/js/product/producList.js"></script>
