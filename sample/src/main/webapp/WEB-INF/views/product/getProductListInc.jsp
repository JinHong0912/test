<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/css/product/product.css">
<!-- if에 따라 바뀌는 부분 -->
<div id="main-member" class="bg-color-8 br-3 margin-t20 padding-a-20">
	<div class="title-wrap">
		<span class="font-16 bold noto">3. 쇼핑몰 상품 목록</span> 
		<span class="font-16 noto">
		<%-- 	<c:if test="${words eq ''}">
				전체 생성된 게시판은 <strong class="bold font-18"> ${boardCount}개 </strong>입니다.
			</c:if> --%>
		
			<%-- <c:if test="${words ne ''}">
				검색된 게시판은<strong class="bold font-18"> ${boardCount}개 </strong>입니다.
			</c:if> --%>
		</span>
	</div>

	<div class="search-wrap margin-tb-20">
		<span class="font-16 bold">
			<button type="button" id="selectDelete-btn"	class="btn-70 bold bo-pink">선택삭제</button>
			<button type="button" onClick="location.href='/cate/getCategory'" class="btn-80 bold bo-blue">카테고리 등록</button>
			<button type="button" onClick="location.href='/product/setProduct'" class="btn-80 bold bo-blue">상품등록</button>
		
		</span> <span class="">
			<form method="post" action="/board">
				<select name="searchOpt" id="searchOpt" class="sel-120">
					<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if>>전체</option>
					<option value="productName" <c:if test="${searchOpt eq 'productName'}">selected</c:if>>상품명</option>
					<option value="productSeller" <c:if test="${searchOpt eq 'productSeller'}">selected</c:if>>상품판매자</option>
				</select> 
				<input type="search" name="words" id="words" class="input-150 bo-blue" value="${words}"/>
				<button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
				<button type="button" class="btn-80 bold bo-gray" onClick="javascript:location.href='/board'">전체보기</button>
			</form>
		</span>
	</div>
	<!-- list 박스  부분-->
	<div id="member-list" class="margin-t10">
		<table>
			<tr class="tr-50 f6 bg-color-3 align font-15">
				<td class="td-5"><input type="checkbox" id="checkAll" /></td>
				<td class="td-5">NO.</td>
				<td class="td-5">MinorName.</td>
				<td class="td-40">ProductName.</td>
				<td class="td-20">Seller.</td>
				<td class="td-10">Price/DC.</td>
				<td class="td-5">Amount/Stock.</td>
				<td class="td-10">Etc.</td>
			</tr>
			<!-- 검색 결과가 없을때 -->
			<c:if test="${ProductCount == 0}">
			<tr class="tr-45">
				<td colspan="8" class="align bold font-16">검색된 결과가 없습니다.</td>
			</tr>
			<tr>
					<td colspan="8" class="tr-border bg-color-7"></td>
			</tr>
			</c:if>
			
			<c:forEach var="pList" items="${pList}">
				<tr class="tr-50 align font-16">
					<td class=""><input type="checkbox" class="chk" data-bid="" /></td>
					<td class="">${boardList.bid}</td>
					<td class="bold eng">${boardList.boardCode}</td>
					<td class=""><a href = "/article?boardCode=${boardList.boardCode}" target="_blank"> ${boardList.boardName}</a></td>
					<td class="">${boardList.boardMaker}</td>
					<td class="">
						<span class="clrBox f6" style="background-color:${boardList.boardColor}; padding: 5px 10px">${boardList.boardColor}</span>
					</td>
					<td class="td-10">${boardList.boardRegdate}</td>
					<td class="td-20">
					<!-- onClick=""방식은 GET 방식이다  -->
					<!-- post 가 있으면 POST 방식 -->
					<!-- ? 값을 같이 보낸다라는 말이다 .GRT 방식이다 -->
						<button type="button" onClick="" class="btn-50 bold bo-blue">수정</button>
						<button type="botton" onClick="location.href='/board/setBoardDelete?boardCode=${boardList.boardCode}'" class="btn-50 bold bo-blue">삭제</button>
					<%--<button type="botton" onClick=/board/setBoardDelete?boardCode=${boardList.boardCode} class="btn-50 bold bo-blue">삭제</button> 
							"location.href='/board/setBoardDelete?boardCode=${boardList.boardCode}'"이렇게 적어야 삭제 버튼을 눌렀을때 주소 값이 나온다.				--%>
					</td>
				</tr>
				<tr>
					<td colspan="8" class="tr-border bg-color-7"></td>
				</tr>
			</c:forEach>
		</table>
		
	</div>
	
	<!-- board confie -->
		<div class="page-grp margin-t10">
	
		</div>
	</div>
</div>