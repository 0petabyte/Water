<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Time Music</title>
		<link href="https://fonts.googleapis.com/css?family=Carter+One" rel="stylesheet">
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
		  h1 {
		  	font-family: 'Carter One', cursive;
		  	font-size: 60px;
		  	color: black;
		  	margin: 3px 0px;
		  }
		  #aa {
		  	margin: auto 0;
		  	display: flex;
			align-items: center;
			justify-content: center;
		  }
		  #login{
		  	border: 1px solid black;
		  	border-radius: 10px;
		  	width: 600px;
		  	height: 300px;
		  	padding: 30px;
		  }
		  .btn {
		  	height: 50px;
		  	width: 300px;
		  	border: 1px solid red;
		  	background: white;
		  	color: red;
		  	font-weight: bold;
		  	font-size: 12pt;
		  }
		  a {
		  	text-decoration: none;
		  	color: red;
		  }
		  
		  .btn:hover {
		  	text-decoration: none;
		  	color: red;
		  }
		  
		  .btn:link {text-decoration:none;}
		  .btn:visited {text-decoration:none;}
		  .btn:active {text-decoration:none;}
		  .btn:hover {text-decoration:none;}
		  .btn:focus {text-decoration:none;}
		  
		</style>
		<script type="text/javascript">
		function loginlink(){
			location.href = "${google_url}";
		}
		</script>
		</head>
		<body>
		<%-- <div style="background-color:#15a181; width: 100%; height: 50px;text-align: center; color: white; "><h3>타임뮤직에 로그인</h3></div>
		<br>
		<!-- 구글 로그인 화면으로 이동 시키는 URL -->
		<!-- 구글 로그인 화면에서 ID, PW를 올바르게 입력하면 oauth2callback 메소드 실행 요청-->
		<div id="google_id_login" style="text-align:center"><a href="${google_url}"><img width="230" src="${root}/images/googlelogin.png"/></a></div>
	 --%>
	 	<br><br>
	 	<div id="aa">
		<div id="login">
			<h1 id="txt">Login</h1><br>
			<h5>기존에 사용하시는 계정으로 간단하게 회원가입하세요.</h5>
			<img width="50" src="${root}/images/googlelogo.png">
			<button class="btn" onclick="loginlink()">구글 계정으로 로그인</button>
		</div>
		</div>
	
	</body>
</html>