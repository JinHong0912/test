<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="../css/users.css">
<link rel="stylesheet" href="../css/common.css">

  <!-- if에 따라 바뀌는 부분 -->

<!--  수정하기 전************************************************************************************************* -->

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
	<!-- 회원보기 -->
    <!-- list 박스  부분-->
    <div id="member-view" class="margin-t30">
        <h1 class="font-16 margin-b10">
            <i class="fas fa-male"></i>
            사용자 상세보기
        </h1>
		<form method="post" action="/users/getUsersModify">
        <table>
            <tr class="tr-45">
                <td class="bg-color-5 f6 w-15 align">사용자 아이디</td>
                <td class="w-35 padding-lr-5">
                	<input type="text" name="userID" id="userID" value="" class="input-200 w-35"/>
                </td>
                <td class="bg-color-5 f6 w-15 align">사용자 비밀번호</td>
                <td class="w-35 padding-lr-5">
                	<input type="text" name="passwd" id="passwd" value="" class="input-200 w-35"/>
                </td>
            </tr>
            <tr>
                <td colspan="4" class="tbl-line"></td>
            </tr>
             <tr class="tr-45">
                <td class="bg-color-5 f6 w-15 align">사용자 이름</td>
                <td class="w-35 padding-lr-5">
                	<input type="text" name="userName" id="userName" value="" class="input-200 w-35"/>
                </td>
                <td class="bg-color-5 f6 w-15 align">사용자 권한</td>
                <td class="w-35 padding-lr-5"></td>
            </tr>
            <tr>
                <td colspan="4" class="tbl-line"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 f6 w-15 align">사용자 연락처</td>
                <td class="w-35 padding-lr-5">
                	<input type="text" name="userPhon" id="userPhon" value="" class="input-200 w-35"/>
                </td>
                <td class="bg-color-5 f6 w-15 align">사용자 가입일</td>
                <td class="w-35 padding-lr-5">
               		
                </td>
            </tr>
            <tr>
                <td colspan="4" class="tbl-line"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 f6 w-15 align">사용자 이메일</td>
                <td colspan="3" class="w-85 padding-lr-5">
                	<input type="text" name="userEmail" id="userEmail" value="" class="input-200 w-35"/>@
                	<input type="text" name="userDomain" id="userDomain" value="" class="input-200 w-35"/>
                </td>
            </tr>
            <tr>
                <td colspan="4" class="tbl-line"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 f6 w-15 align">사용자 이미지</td>
                <td colspan="3" class="w-85 padding-lr-5">
              
                </td>
            </tr>
            <tr>
                <td colspan="4" class="tbl-line"></td>
            </tr>

        </table>
        <div class="btn-grp margin-t20">
            <div class="btn-left float-l">
                <button type="button" onclick="location.href='/users'" class="btn-50 bo-gray bold font-12">목록</button>
            </div>
            <div class="btn-left float-r">
                <button type="submit" id="reg-btn" onclick="location.href='/users/getUsersViewInc'"
                    class="btn-80 bo-blue bold font-12">수정하기</button>
                <button type="reset" onclick="location.href='/users'"
                    class="btn-80 bo-blue bold font-12">취소하기</button>
            </div>
            <div class="clearfix"></div>
    	    </div>
		</form>
    </div>
</div>

<!-- 회원보기 -->

<script src="/js/users.js"></script>
<script src="/js/register.js"></script>