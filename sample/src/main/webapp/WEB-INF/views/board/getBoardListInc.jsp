<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- if에 따라 바뀌는 부분 -->
<div id="main-member" class="bg-color-8 br-3 margin-t20 padding-a-20">
	<div class="title-wrap">
		<span class="font-16 bold">2. 게시판 목록</span> <span class="btnn">검색된
			게시판은 <strong>10개</strong>입니다.
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
			<form method="post" action="/users">
				<select name="searchOpt" id="searchOpt" class="sel-120">
					<option value="all" selected>전체</option>
					<option value="boardID">게시판아이디</option>
					<option value="boardName">게시판이름</option>
					<option value="boardCode">게시판코드</option>
				</select> <input type="search" name="words" id="words"
					class="input-150  bo-blue" value="" />
				<button type="sudmit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
				<button type="button" class="btn-80 bold bo-gray"
					onClick="javascript:location.href='/board' ">전체보기</button>
			</form>
		</span>
	</div>
	<!-- list 박스  부분-->
	<div id="member-list" class="margin-t10">
		<table>
			<tr class="tr-50 f6 bg-color-5 align font-16">
				<td class="td-5"><input type="checkbox" id="checkAll" /></td>
				<td class="td-5">번호</td>
				<td class="td-15">회원아이디</td>
				<td class="td-15">회원이름</td>
				<td class="td-10">회원권한</td>
				<td class="td-15">회원이메일</td>
				<td class="td-15">회원가입일</td>
				<td class="td-20">비고</td>
			</tr>
			<c:forEach var="usersList" items="${usersList}">
				<tr class="tr-50 align font-16">
					<td class="td-5"><input type="checkbox" class="chk"
						data-uid="" /></td>
					<td class="td-5">${usersList.uid}</td>
					<td class="td-15 bold eng">${usersList.userID}</td>
					<td class="td-15">${usersList.userName}</td>
					<td class="td-10"></td>
					<td class="td-15">${usersList.userEmail}@${usersList.userDomain}</td>
					<td class="td-15">${usersList.userRegdate}</td>
					<td class="td-20">
						<button type="button" onClick="javascript:location.href='/users'"
							class="btn-50 bold bo-blue">수정</button>
						<button type="button" onClick="javascript:location.href='/users'"
							class="btn-50 bold bo-blue">삭제</button>
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
</div>