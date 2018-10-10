<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
		<c:set var="root" value="<%=request.getContextPath()%>" />
		<style type="text/css">
		  html, div, body,h3{
		  	margin: 0;
		  	padding: 0;
		  }
		  h3{
		  	display: inline-block;
		  	padding: 0.6em;
		  }
		  </style>
		</head>
		<body>
		<div style="background-color:#15a181; width: 100%; height: 50px;text-align: center; color: white; "><h3>타임뮤직에 로그인</h3></div>
		<br>
		<!-- 구글 로그인 화면으로 이동 시키는 URL -->
		<!-- 구글 로그인 화면에서 ID, PW를 올바르게 입력하면 oauth2callback 메소드 실행 요청-->
		<div id="google_id_login" style="text-align:center"><a href="${google_url}"><img width="230" src="${root}/images/googlelogin.png"/></a></div>
	</body>
</html>