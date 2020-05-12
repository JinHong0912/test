<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린컴퓨터아카데미</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/article.css">
   
</head>
<body>
    <div id="tbl-spacing">
        <div id="article-top" class="margin-b20">
            <span class="float-l bold font-18 noto">전체 게시물 수 : 2개</span>
            <span class="float-r noto font-18"><strong>그린컴퓨터 </strong>게시판 입니다.</span>
            <div class="clearfix"></div>
        </div>
    <table>
        <tr class="tr-50 bg-color-1 f6 align font-16 bold">
            <td class="w-5"><input type="checkbox" name="chk"></td>
            <td class="w-5">NO.</td>
            <td class="w-40">Subject.</td>
            <td class="w-10">Writer.</td>
            <td class="w-10">Visit.</td>
            <td class="w-10">Date.</td>
            <td class="w-20">Etc.</td>
        </tr>
        <tr class="tr-50 align font-16 bold">
            <td><input type="checkbox" name="chk"></td>
            <td>123</td>
            <td>그린컴퓨터학원입니다</td>
            <td>관리자</td>
            <td>10</td>
            <td>2020-12-26</td>
            <td>
                <button type="botton" onclick="" class="btn-80 bo-blue font-13">게시물수정</button>
                <button type="botton" onclick="" class="btn-80 bo-blue font-13">게시물삭제</button>

            </td>
        </tr>
        <tr>
            <td colspan="7" class="tbl-line"></td>
        </tr>
       
    </table>
    <div class="page-grp margin-t20">
        패이지 번호
    </div>
</div>
</body>
</html>