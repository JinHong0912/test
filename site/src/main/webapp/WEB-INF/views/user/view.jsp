<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/head.jspf"%>
<%@include file="../include/info.jspf"%>
<link rel="stylesheet" href="/css/reset.css">

<div class="wrap">
	회원번호 : ${vo.id} <br />
	회원아이디: ${vo.userid}<br /> 
	회원 이름: ${vo.name}<br />
	회원 휴대전화: ${vo.phone}<br /> 
	회원 이메일: ${vo.email} @ ${vo.domain} <br />
	회원 권한 : ${vo.auth}<br /> 
	회원 가입: ${vo.regdate}<br />
</div>
<%@include file="../include/foot.jspf"%>