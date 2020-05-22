<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="cutString" class="com.greenart.sample.util.CutString" />    
    
<link rel="stylesheet" href="/css/product/product.css">
<div id="main-board" class="padding-a-20 margin-t20 bg-color-8 br-3">
	<div class="title-wrap">
        <span class="font-18 bold noto">3. 상품 관리 페이지</span>
        <span class="noto font-16">        
        	
        </span>
    </div>

    <div class="search-wrap margin-tb-20">
        <span class="font-16 bold">
            <button type="button" id="selectDelete-btn" class="btn-70 bold bo-pink">선택삭제</button>
            <button type="button" class="btn-80 bold bo-pink" 
            	onClick="location.href='/cate/getCategory'">카테고리등록</button>
            <button type="button" class="btn-80 bold bo-pink" 
            	onClick="location.href='/product/setProduct'">상품등록</button>
        </span>
        <span class="">
            <form method="post" action="/product">
                <select name="searchOpt" class="sel-120">
                    <option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if> >전체</option>
                    <option value="productName" <c:if test="${searchOpt eq 'productName'}">selected</c:if> >상품명</option>
                    <option value="productSeller" <c:if test="${searchOpt eq 'productSeller'}">selected</c:if> >상품판매자</option>
                </select>
                <input type="search" name="words" id="words" class="input-150 bo-blue" value="${words}" />
                <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>

                <button type="button" onClick="javascript:location.href='/product'"
                    class="btn-80 bold bo-gray">전체보기</button>
            </form>
        </span>
    </div>
    
    <!-- board config -->
    <div id="board-list" class="margin-t10">
        <table>
            <tr class="font-14 tr-50 f6 bg-color-3 align">
                <td class="td-5">
                    <input type="checkbox" id="checkAll" />
                </td>
                <td class="td-5">번호.</td>
                <td class="td-10">소분류.</td>
                <td class="td-40">상품이름.</td>
                <td class="td-5">판매자.</td>
                <td class="td-15">판매가/원가.</td>
                <td class="td-10">총수량/재고.</td>
                <td class="td-10">비고.</td>
            </tr>
            
            <!-- 검색 x -->
            <c:if test = "${ProductCount == 0}">
	            <tr class="tr-50">
	            	<td colspan="8" class="align bold font-16">검색된 결과가 없습니다.</td>
	            </tr>
	            <tr><td colspan="8" class="tr-border bg-color-7"></td></tr>
            </c:if>
            
		<c:forEach var="pList" items="${pList}">            
            <tr class="tr-50 align font-16">
                <td><input type="checkbox" class="chk" data-uid="${boardList.bid}" /></td>
                <td>${pList.pid}</td>
                <td class="bold eng font-14">
                	${pList.minorName}<br>
                	[${pList.productDisplay}]
                </td>
                <td class="lalign bold">
                	<c:if test = "${pList.productStatus eq 'new' }">
                		<span class="eng status bg-color-9 f6">${pList.productStatus}</span>
					</c:if>      
					
					<c:if test = "${pList.productStatus eq 'sale' }">          		
                		<span class="eng status bg-color-5 f6">${pList.productStatus}</span>
					</c:if>                		
                	<span class="noto bold">
                		<a href="/product/getProductView?pid=${pList.pid}">
                			${cutString.strCutBytes(pList.productName, 46, 2)}
						</a>                			
                	</span>
                </td>
                <td class="bold font-12">${cutString.strCutBytes(pList.productSeller, 20, 2)}</td>
                <td class="bold font-12 ralign">
                	판매가 : <fmt:formatNumber value="${pList.productPrice - ( pList.productPrice * ( pList.productDC / 100 ) )}" pattern="#,##0" /> 원<br>
                	원가 : <fmt:formatNumber value="${pList.productPrice}" pattern="#,##0" /> 원
                </td>
                <td class="bold font-12 ralign">
                	재고 : <fmt:formatNumber value="${pList.productStock}" pattern="#,##0" /> 개 <br>
                	총 수량 : <fmt:formatNumber value="${pList.productAmount}" pattern="#,##0" /> 개
                </td>
                <td>
                    <button type="button" onClick="" class="btn-50 bold bo-blue">수정</button>
                   	<button type="button" onClick="checkDelete('${pList.pid}');" class="btn-50 bold bo-pink">삭제</button>
                </td>
            </tr>
            <tr>
                <td colspan="8" class="tr-border bg-color-7"></td>
            </tr>
            </c:forEach>
        </table>
        <div class="page-grp margin-t10">
        
        </div>
    </div>
</div>

<script>
	function checkDelete(pid) {
		var str = "상품과 관련된 모든 내용이 삭제됩니다.\n선택하신 상품을 삭제하시겠습니까?";
		if( confirm( str ) ) {
			location.href = '/product/setProductDelete?pid='+pid;
		}
	}
</script>