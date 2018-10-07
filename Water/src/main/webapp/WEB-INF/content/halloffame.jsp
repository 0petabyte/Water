<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Time Music</title>
		<c:set var="root" value="<%=request.getContextPath()%>" />
		<link rel="stylesheet" type="text/css" href="${root}/css/hallstyle.css">
	</head> 
	<body>
		<h1>명예의 전당</h1>
		<div class="container">
			<div id="carousel">
				<figure><h5>2008년</h5><img src="${root}/images/hall/2008top1.jpg" alt="" width="100%" height="40%"></figure>
				<figure><h5>2017년</h5><img src="${root}/images/hall/2017top1.jpg" alt="" width="100%" height="40%"></figure>
				<figure><h5>2016년</h5><img src="${root}/images/hall/2016top1.jpg" alt="" width="100%" height="40%"></figure>
				<figure><h5>2015년</h5><img src="${root}/images/hall/2015top1.jpg" alt="" width="100%" height="50%"></figure>
				<figure><h5>2014년</h5><img src="${root}/images/hall/2014top1.jpg" alt="" width="100%" height="35%"></figure>
				<figure><h5>2013년</h5><img src="${root}/images/hall/2013top1.jpg" alt="" width="100%" height="50%"></figure>
				<figure><h5>2012년</h5><img src="${root}/images/hall/2012top1.jpg" alt="" width="100%" height="40%"></figure>
				<figure><h5>2011년</h5><img src="${root}/images/hall/2011top1.jpg" alt="" width="100%" height="50%"></figure>
				<figure><h5>2010년</h5><img src="${root}/images/hall/2010top1.jpg" alt="" width="100%" height="50%"></figure>
				<figure><h5>2009년</h5><img src="${root}/images/hall/2009top1.jpg" alt="" width="100%" height="50%"></figure>
			</div>
		</div>
		<p>1위</p>
	</body>
</html>
