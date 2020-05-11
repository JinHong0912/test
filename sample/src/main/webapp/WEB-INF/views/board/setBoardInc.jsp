<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/board/board.css">
 
 <!-- if에 따라 바뀌는 부분 -->
<div id="main-board" class="bg-color-8 br-3 margin-t20 padding-a-20">
	<div class="title-wrap">
		<span class="font-16 bold noto">2. 게시판 설정 상세보기</span> 
		<span class="font-16 noto">
			<c:if test="${words eq ''}">
				전체 생성된 게시판은 <strong>${boardCount}명</strong> 입니다.
			</c:if>
		
			<c:if test="${words ne ''}">
				검색 된 게시판은 <strong>${boardCount}명</strong> 입니다.
			</c:if>
		</span>
	</div>

	<div class="search-wrap margin-tb-20">
		<span class="font-16 bold">
			<button type="button" id="selectDelete-btn" class="btn-70 bold bo-pink">선택삭제</button>
		</span>
		<span class="">
			<form method="post" action="/board">
				<select name="searchOpt" id="searchOpt" class="sel-120">
					<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if> >전체</option>
					<option value="boardCode" <c:if test="${searchOpt eq 'boardCode'}">selected</c:if>  >게시판코드</option>
					<option value="boardName" <c:if test="${searchOpt eq 'boardName'}">selected</c:if> >게시판이름</option>
					
				</select> <input type="search" name="words" id="words"
					class="input-150  bo-blue" value="${words}" />
				<button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
				<button type="button" class="btn-80 bold bo-gray"
					onClick="javascript:location.href='/board' ">목록보기</button>
			</form>
		</span>
	</div>
    
	<!-- 회원보기 -->
    <!-- list 박스  부분-->
    <div id="board-view" class="margin-t30">
        <h1 class="font-16 margin-b10">
            <i class="fas fa-pen-alt"></i>게시판 설정 상세보기
        </h1>
	
	<form name="" id="" method="post" action="/board/setBoard">
        <table>
            <tr class="tr-45">
                <td class="bg-color-10 f6 w-15 align">게시판 코드</td>
                <td class="w-35 padding-lr-5">
                <input type="text" name="boardCode" id="boardCode" class="input-180 padding-lr-5">
 
                ${boardView.boardCode}</td>
                <td class="bg-color-10 f6 w-15 align">게시판 이름</td>
                <td class="w-35 padding-lr-5">
                ${boardView.boardName}
                  <input type="text" name="boardName" id="boardName" class="input-180 padding-lr-5">
                <span id="confirm" class="font-14 bold orange"></span>
               
                </td>
            </tr>
            <tr><td colspan="4" class="tbl-line"></td></tr>
            <tr class="tr-45">
                <td class="bg-color-10 f6 w-15 align">게시판 색상</td>
                <td class="w-35 padding-lr-5">
                <select class="sel-180" name="boardColor" id="boardColor">
                	<option value="">선택</option>
                	<option value="#5D1049">#5D1049</option>
                	<option value="#B00020">#B00020</option>
                	<option value="#1A237E">#1A237E</option>	
                	<option value="#2962FF">#2962FF</option>
                
                </select>
                <span id="clrBox" class="clrBox margin-l10"></span>
                
                </td>
                <td class="bg-color-10 f6 w-15 align">게시판 생성자</td>
                <td class="w-35 padding-lr-5"></td>
            </tr>
            <tr><td colspan="4" class="tbl-line"></td></tr>
            <tr class="tr-45">
                <td class="bg-color-10 f6 w-15 align">게시판 타입</td>
                <td class="w-35 padding-lr-5">
           	  	   <input type="radio" name="boardType" id="boardType" class="radio-btn" value="일반게시판" checked"/><span>일반게시판</span>
             	   <input type="radio" name="boardType" id="boardType" class="radio-btn" value="겔러리게시판" checked/><span>겔러리게시판</span>
                </td>
                <td class="bg-color-10 f6 w-15 align">게시판 생성일</td>
                <td class="w-35 padding-lr-5"></td>
            </tr>
            <tr><td colspan="4" class="tbl-line"></td></tr>
            
        </table>
        <div class="btn-grp margin-t20">
            <div class="btn-left float-l">
                <button type="button" onclick="location.href='/board" class="btn-50 bo-gray bold font-12">목록</button>
            </div>
            <div class="btn-left float-r">
                <button type="submit" class="btn-80 bo-blue bold font-12">게시판 생성</button>
                <button type="reset" onclick="" class="btn-80 bo-blue bold font-12">게시판 취소</button>
            </div>
            <div class="clearfix"></div>
        </div>
        </form>
    </div>
</div>

<!-- 회원보기 -->

<script src="../js/board/board.js"></script>