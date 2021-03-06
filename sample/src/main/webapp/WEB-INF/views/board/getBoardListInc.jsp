<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- if에 따라 바뀌는 부분 -->
<div id="main-member" class="bg-color-8 br-3 margin-t20 padding-a-20">
	<div class="title-wrap">
		<span class="font-16 bold noto">2. 게시판 생성 목록</span> 
		<span class="font-16 noto">
			<c:if test="${words eq ''}">
				전체 생성된 게시판은 <strong class="bold font-18"> ${boardCount}개 </strong>입니다.
			</c:if>
		
			<c:if test="${words ne ''}">
				검색된 게시판은<strong class="bold font-18"> ${boardCount}개 </strong>입니다.
			</c:if>
		</span>
	</div>

	<div class="search-wrap margin-tb-20">
		<span class="font-16 bold">
			<button type="button" id="selectDelete-btn"
				class="btn-70 bold bo-pink">선택삭제</button>
			<button type="button"
				onClick="javascript:location.href='/board/setBoard'"
				class="btn-80 bold bo-blue">게시판생성</button>
		</span> <span class="">
			<form method="post" action="/board">
				<select name="searchOpt" id="searchOpt" class="sel-120">
					<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if>>전체</option>
					<option value="boardName" <c:if test="${searchOpt eq 'boardName'}">selected</c:if>>게시판이름</option>
					<option value="boardCode" <c:if test="${searchOpt eq 'boardCode'}">selected</c:if>>게시판코드</option>
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
			<tr class="tr-50 f6 bg-color-5 align font-16">
				<td class="td-5"><input type="checkbox" id="checkAll" /></td>
				<td class="td-5">NO.</td>
				<td class="td-15">게시판코드</td>
				<td class="td-10">게시판이름</td>
				<td class="td-10">게시판생성자</td>
				<td class="td-10">게시판색상</td>
				<td class="td-15">게시판작성일</td>
				<td class="td-20">비고</td>
			</tr>
			<!-- 검색 결과가 없을때 -->
			<c:if test="${boardCount == 0}">
			<tr class="tr-45">
				<td colspan="8" class="align bold font-16">검색된 결과가 없습니다.</td>
			</tr>
			<tr>
					<td colspan="8" class="tr-border bg-color-7"></td>
			</tr>
			</c:if>
			
			<c:forEach var="boardList" items="${boardList}">
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
		<div class="page-grp margin-t10">
			<span class=""> <a href="#"
				class="page-number member-page-number">1</a>
			</span>
		</div>
	</div>
	
	<!-- board confie -->
	
	
		<div class="page-grp margin-t10">
			<c:forEach begin="1" end="${pageNum}" var="num">
				<span class=""> 
				<a href="/users?num=${num}&searchOpt=${searchOpt}&words=${words}&template=${template}&mypage=${mypage}" class="page-number member-page-number">${num}</a>	
				</span>
			</c:forEach>
		</div>
	</div>
</div>