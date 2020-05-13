<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="cutString" class="com.greenart.sample.util.CutString" />


<%@ include file="part/head.jspf"%>

<body>
	<div id="tbl-spacing">
		<div id="article-top" class="margin-b20">
			<span class="float-l bold font-18 noto">전체 게시물 수 : ${cnt}개</span> <span
				class="float-r noto font-18"><strong>[
					${boardConfig.boardName} ]</strong>게시판 입니다.</span>
			<div class="clearfix"></div>
		</div>
		<div class="search-wrap margin-tb-20">
			<span class="font-16 bold">
				<button type="button" id="selectDelete-btn"
					class="btn-70 bold bo-pink">선택삭제</button>
				<button type="button"
					onClick="javascript:location.href='/article/setArticle?boardCode=${boardCode}'"
					class="btn-80 bold bo-blue">게시물 쓰기</button>
			</span> <span class="">
				<form method="post" action="/article?boardCode=${boardCode}">
					<select name="searchOpt" id="searchOpt" class="sel-120">
						<option value="all"
							<c:if test="${searchOpt eq 'all'}">selected</c:if>>전체</option>
						<option value="subject"
							<c:if test="${searchOpt eq 'boardName'}">selected</c:if>>제목</option>
						<option value="writer"
							<c:if test="${searchOpt eq 'boardCode'}">selected</c:if>>작성자</option>
					</select> <input type="search" name="words" id="words"
						class="input-150 bo-blue" value="${words}" />
					<button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
					<button type="button" class="btn-80 bold bo-gray"
						onClick="javascript:location.href='/article?boardCode=${boardCode}'">전체보기</button>
				</form>
			</span>
		</div>
		<table>
			<tr class="tr-50 f6 align font-16 bold eng"
				style="background-color:${boardConfig.boardColor}">
				<td class="w-5"><input type="checkbox" name="chk" id="checkAll"></td>
				<td class="w-5">NO.</td>
				<td class="w-40">Subject.</td>
				<td class="w-10">Writer.</td>
				<td class="w-10">Visit.</td>
				<td class="w-10">Date.</td>
				<td class="w-20">Etc.</td>
			</tr>

			<!--작성된 게시판 루프 -->
			<c:forEach var="articleList" items="${articleList}"
				varStatus="status">
				<tr class="tr-50 align font-16 bold noto">
					<td><input type="checkbox" name="chk" class="chk"
						data-code="${boardCode}" data-aid="${articleList.aid}"></td>
					<td>${cnt - status.index}</td>
					<td class="lalign bold kor">
						<a href="/article/getArticleView?boardCode=${boardCode}&aid=${articleList.aid}">
							<!--작성된 게시판 제목 길이 잘라 주는 부분 -->
							${cutString.strCutBytes(articleList.subject, 30, 2)} <span
							class="tomato">(10)</span>
						</a>
					</td>
					<td>${articleList.writer}</td>
					<td>${articleList.hit}</td>
					<td>${articleList.regdate}</td>
					<td>
						<button type="botton" onclick="" class="btn-80 bo-blue font-13">게시물수정</button>
						<button type="botton"
							onclick="location.href='/article/setArticleDelete?boardCode=${boardCode}&aid=${articleList.aid}'"
							class="btn-80 bo-blue font-13">게시물삭제</button>

					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="7" class="tbl-line"></td>
			</tr>

		</table>
		<div class="page-grp margin-t20">패이지 번호</div>
	</div>
</body>

<%@ include file="part/foot.jspf"%>