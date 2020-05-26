<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/board/board.css">

<!-- if에 따라 바뀌는 부분 -->
<div id="main-siteInfo" class="bg-color-8 br-3 margin-t20 padding-a-20">
	<div class="title-wrap">
		<span class="font-16 bold noto">6. 사이트 정보 상세 보기</span> <span
			class="font-16 noto"> <%-- 	<c:if test="${words eq ''}">
				전체 생성된 게시판은 <strong>${boardCount}명</strong> 입니다.
			</c:if> --%> <%-- <c:if test="${words ne ''}">
				검색 된 게시판은 <strong>${boardCount}명</strong> 입니다.
			</c:if> --%>
		</span>
	</div>


	<!-- 회원보기 -->
	<!-- list 박스  부분-->
	<div id="board-view" class="margin-t30">
		<h1 class="font-16 margin-b10">
			<i class="fas fa-pen-alt"></i> 사이트 정보 상세보기
		</h1>

		<form id="" method="post" action="/siteInfo/setSiteInfo">
			
				<input type="hidden" name="siteManager" value="${sView.siteManager}"/>
			<table>
				<tr class="tr-45">
					<td class="bg-color-2 f6 w-15 align">사이트 이름</td>
					<td class="w-35 padding-lr-5">
						<input type="text" name="siteName" value="${sView.siteName}" class="input-full font-18 padding-lr-5"/>
					</td>
					<td class="bg-color-2 f6 w-15 align">사이트 전화번호</td>
					<td class="w-35 padding-lr-5">
							<input type="text" name="sitePhone" value="${sView.sitePhone}" class="input-full font-18 padding-lr-5"/>
					</td>
				</tr>
				<tr><td colspan="4" class="tbl-line"></td></tr>
				<tr class="tr-45">
					<td class="bg-color-2 f6 w-15 align">사이트 이메일</td>
					<td class="w-35 padding-lr-5">
						<input type="text" name="siteEmail" value="${sView.siteEmail}" class="input-full font-18 padding-lr-5"/>
					</td>
					<td class="bg-color-2 f6 w-15 align">사이트 카피라이터</td>
					<td class="w-35 padding-lr-5">
							<input type="text" name="siteCopy" value="${sView.siteCopy}" class="input-full font-18 padding-lr-5"/>
					</td>
				</tr>
				<tr><td colspan="4" class="tbl-line"></td></tr>
				<tr class="tr-45">
					<td class="bg-color-2 f6 w-15 align">사이트 주소</td>
					<td class="w-35 padding-lr-5">
						<input type="text" name="siteUrl" value="${sView.siteUrl}" class="input-full font-18 padding-lr-5"/>
					</td>
					<td class="bg-color-2 f6 w-15 align">사이트 메인 배너 </td>
					<td class="w-35 padding-lr-5">
							<input type="text" name="siteMainBanner" value="${sView.siteMainBanner}" class="input-full font-18 padding-lr-5"/>
					</td>
				</tr>
			</table>
			<div class="btn-grp margin-t20">
				<div class="btn-left float-r">
					<button type="submit" id="board-btn" class="btn-50 bo-blue bold font-12">수정</button>
				</div>
			</div>
			<div class="clearfix"></div>
		</form>
	</div>
</div>

<!-- 회원보기 -->

<script src="../js/board/board.js"></script>