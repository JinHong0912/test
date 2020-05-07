<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- if에 따라 바뀌는 부분 -->
<div id="main-member" class="bg-color-8 br-3 margin-t20 padding-a-20">
	<div class="title-wrap">
		<span class="font-16 bold noto">1. 회원목록</span> 
		<span class="font-16 noto">
			<c:if test="${words eq ''}">
				전체 가입된 회원은 <strong>${usersCount}명</strong> 입니다.
			</c:if>
		
			<c:if test="${words ne ''}">
				검색된 회원은 <strong>${usersCount}명</strong> 입니다.
			</c:if>
		</span>
	</div>

	<div class="search-wrap margin-tb-20">
		<span class="font-16 bold">
			<button type="button" id="selectDelete-btn" class="btn-70 bold bo-pink">선택삭제</button>
		</span>
		<span class="">
			<form method="post" action="/users">
				<select name="searchOpt" id="searchOpt" class="sel-120">
					<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if> >전체</option>
					<option value="userID" <c:if test="${searchOpt eq 'userID'}">selected</c:if>  >아이디</option>
					<option value="userName" <c:if test="${searchOpt eq 'userName'}">selected</c:if> >이름</option>
					<option value="auth" <c:if test="${searchOpt eq 'auth'}">selected</c:if> >권한</option>
				</select> <input type="search" name="words" id="words"
					class="input-150  bo-blue" value="${words}" />
				<button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
				<button type="button" class="btn-80 bold bo-gray"
					onClick="javascript:location.href='/users' ">목록보기</button>
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
			<!-- 검색 결과가 없을때 -->
			<c:if test="${usersCount == 0}">
			<tr class="tr-45">
				<td colspan="8" class="align bold font-16">검색된 결과가 없습니다.</td>
			</tr>
			<tr>
					<td colspan="8" class="tr-border bg-color-7"></td>
				</tr>
			</c:if>
			
			
			<c:forEach var="usersList" items="${usersList}">
				<tr class="tr-50 align font-16">
					<td class="td-5">
						<c:if test="${usersList.auth ne '관리자'}">
							<input type="checkbox" class="chk" data-uid="${usersList.uid}" />
						</c:if>
					</td>
					<td class="td-5">${usersList.uid}</td>
					<td class="td-15 bold eng">${usersList.userID}</td>
					<td class="td-15">${usersList.userName}</td>
					<td class="td-10"><select id="auth" class="sel-100"
						onChange="authUpdate(this.value,'${usersList.uid}');"
						<c:if test="${usersList.auth eq '관리자'}">disabled</c:if>>
							<option value="관리자"
								<c:if test="${usersList.auth eq '관리자'}">selected</c:if>>관리자</option>
							<option value="회원"
								<c:if test="${usersList.auth eq '회원'}">selected</c:if>>회원</option>
							<option value="일반"
								<c:if test="${usersList.auth eq '일반'}">selected</c:if>>일반</option>


					</select></td>
					<td class="td-15">${usersList.userEmail}@${usersList.userDomain}</td>
					<td class="td-15">${usersList.userRegdate}</td>
					<td class="td-20">
						<button type="button" onClick="javascript:location.href='/users'"
							class="btn-50 bold bo-blue">수정</button>
						<button type="button" onClick="selectedDelete('${usersList.uid}');"
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
				class="page-number member-page-number">1</a></span>
		</div>
	</div>
</div>
<script src="/js/users.js"></script>