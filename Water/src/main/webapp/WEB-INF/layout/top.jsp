<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
	<title>Barker Music</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<link rel="stylesheet" type="text/css" href="${root}/css/topstyle.css">
	<!-- <script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script> -->
	<script type="text/javascript">
	$(function(){
		$("#playlist").click(function(){
			$("#mylist").slideToggle('fast');
		});
	});
	</script>
</head>
<body>
<div class="jumbotron text-center" style="margin-bottom:0">
	<h1>Barker Music</h1>
	<p>시대의명곡을 무료로즐기자!</p> 
</div>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- <a class="navbar-brand" href="#">WebSiteName</a> -->
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="menulist"><a href="${root}/main.do">시대별명곡</a></li>
				<li class="menulist"><a href="#">음원방송정보</a></li>
				<li class="menulist"><a href="#">실시간음원순위</a></li>
				<li class="menulist"><a href="${root}/sns.do">실시간음원SNS반응</a></li>
				<li class="menulist"><a href="${root}/chucheon.do">추천곡게시판</a></li>
				<li class="menulist"><a href="#">오류신고게시판</a></li>
				<li class="menulist"><a href="#">미정</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">

				<li><a href="#" id="playlist">PlayList</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
</nav>
	<div id="mylist" style="display: none; position: absolute; ">
    	<ul>
			<li>list1</a></li>
			<li>list2</li>
			<li>list3</li>
		</ul>
	</div>
</body>
</html>