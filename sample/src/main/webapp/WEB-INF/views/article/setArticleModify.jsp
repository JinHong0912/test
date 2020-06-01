\<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "part/head.jspf" %>

<!-- 글쓰기에 필요한 부분 -->
<script src="/ckeditor/ckeditor.js"></script>
<!-- 글쓰기에 필요한 부분 -->

<body>
    <div id="tbl-spacing">
        <div id="article-top" class="margin-b20">
            <span class="float-l bold font-18 noto">게시물 수정 페이지 입니다.</span>
            <span class="float-r noto font-18"><strong>[ ${boardConfig.boardName} ]</strong> 게시판 입니다.</span>
            <div class="clearfix"></div>
        </div>
 		
 		<!-- 글쓰기 -->
 		<form method="POST" action="/article/setArticleModify" enctype="multipart/form-data">
 		<input type="hidden" name="boardCode" value="${boardCode}"/>
 		<input type="hidden" name="aid" value="${articleView.aid}"/>
 		<table>
 			<tr><td colspan="2" class="tbl-line"></td></tr><!-- 구분선 -->
			<tr class="tr-50">
				<td class="w-15 align f6 bold" style="background-color:${boardConfig.boardColor}">게시물 제목</td>
				<td class="w-85 padding-lr-10">
				<input type="text" class="input-full padding-lr-10" name="subject" id="subject" value="${articleView.subject}" autofocus></td>
			</tr>
			
			<tr><td colspan="2" class="tbl-line"></td></tr><!-- 구분선 -->
			
			<tr class="tr-50">
				<td class="w-15 align f6 bold" style="background-color:${boardConfig.boardColor}">게시물 작성자</td>
				<td class="w-85 padding-lr-10"><input type="text" class="input-150" maxlength="5" value="${sessionScope.userName}" readonly name="writer" id="writer"></td>
			</tr>
			
			<tr><td colspan="2" class="tbl-line"></td></tr><!-- 구분선 -->
			
			<tr class="tr-50">
				<td class="w-15 align f6 bold" style="background-color:${boardConfig.boardColor}">게시물 내용</td>
				<td class="w-85 padding-lr-10"><textarea name="content" id="editor">${articleView.content}</textarea></td>
			
				<!--------글쓰기에 필요한 부분 ---------->
				<script>
					CKEDITOR.replace("editor");
					CKEDITOR.config.height = 200;
				</script>
				<!---+-------------------------+--->
			</tr>
			
			<tr><td colspan="2" class="tbl-line"></td></tr><!-- 구분선 -->
			
			<tr class="tr-50">
				<td class="w-15 align f6 bold" style="background-color:${boardConfig.boardColor}">게시물 첨부파일</td>
				<td class="w-85 padding-lr-10"><input type="file" name="files"></td>
			</tr>
			
			<tr><td colspan="2" class="tbl-line"></td></tr><!-- 구분선 -->
			
		</table>
			<div class="btn-grp margin-t10">
				<span class="float-l"></span>
				<!-- onclick="location.href는 GRT 방식" -->
					<button type="button" class="btn-80 bo-gray bold" onclick="location.href='/article?boardCode=${boardCode}'">목록보기</button>
				<span class="float-r">
					<button type="submit" id="reg-btn" class="btn-80 bo-blue bold" >수정하기</button>
					<button type="button" class="btn-80 bo-blue bold" onclick="location.href='/article?boardCode=${boardCode}'">수정취소</button>
				</span>
				<div class="clearfix"></div>
			</div>
		</form>
</div>

</body>

<!-- 글쓰기에 필요한 부분 -->
<script>initSample();</script>
<!-- 글쓰기에 필요한 부분 -->
<script>
	$(function(){
		$("#reg-btn").click(function(){

			//wyswig editor 유효성 검사
			var str = CKEDITOR.instances.editor;
			if( str.getData() == ""){
					alert("게시물 내용을 입력하세요.");
					str.focus();
					return false;
			}
		});
			
});
</script>

<%@ include file = "part/foot.jspf" %>