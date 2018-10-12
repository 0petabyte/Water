<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<meta charset="utf-8">
		 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Welcome</title>
		<meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">


        <link rel="stylesheet" href="assets/css/iconfont.css">
        <link rel="stylesheet" href="assets/css/slick/slick.css">
        <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
        <link rel="stylesheet" href="assets/css/stylesheet.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/jquery.fancybox.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	</head> 
	<body>
	<br>
	<div class="container">
	<b>총 <span style="color: red;">${totalCount}</span>개의 게시글이 있습니다</b>
	<br>
		<table class="table table-hover">
			<thead>
			<tr>
				<th style="text-align: center;">No</th>
				<th style="text-align: center;">제목</th>
				<th style="text-align: center;">작성자</th>
				<th style="text-align: center;">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="a" items="${list}">
				<tr>
					<td align="center">${no}</td>
					<c:set var="no" value="${no-1}"/>
					<td align="left">
						<a href="read.do?e_num=${a.e_num}&pageNum=${currentPage}">
							<c:forTokens var="s" items="${a.etitle}" delims=":" varStatus="i">
		   	 					<c:if test="${i.count==1}">${s}</c:if><!-- 제목출력 -->
	   	 						<c:if test="${i.count==2 and s>0}">
	   	 							<span style="color: red;">(${s})</span><!-- 댓글갯수출력 -->
	   	 						</c:if>	
		   	 				</c:forTokens>
						</a>
					</td>
					<td>${a.ewriter}</td>
					<td align="center">
						<fmt:formatDate value="${a.edate}" pattern="yyyy-MM-dd HH:mm"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		
		<!-- 페이징 -->   

	   <table style="margin: 0 auto;">
	   	<tr>
	   		<td align="center">

	   			<ul class="pagination">

	   			   			<c:if test="${startPage>1}">
	   				 <li><a href="error.do?pageNum=${startPage-1}">Previous</a></li>   				 
	   			</c:if>
	   			<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	   				<c:if test="${currentPage==pg}">
	   					<li><a href="error.do?pageNum=${pg}" style="color:red;">${pg}</a></li>
	   				</c:if>
	   				<c:if test="${currentPage!=pg}">
	   					<li><a href="error.do?pageNum=${pg}" style="color:black;">${pg}</a></li>
	   				</c:if>
	   			</c:forEach>
	   			<c:if test="${endPage<totalPage}">
	   				<li><a href="error.do?pageNum=${endPage+1}">Next</a></li>   
	   			</c:if>
	   			</ul>
	   		</td>
	   	</tr>
	   </table>	
	</div>
		<a href="writeform.do"><button type="button" id="btnwrite" class="btn btn-lg">글쓰기</button></a>
	  <!-- START SCROLL TO TOP  -->

        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div>

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery.magnific-popup.js"></script>
        <script src="assets/js/jquery.mixitup.min.js"></script>
        <script src="assets/js/jquery.easing.1.3.js"></script>
        <script src="assets/js/jquery.masonry.min.js"></script>

        <!--slick slide js -->
        <script src="assets/css/slick/slick.js"></script>
        <script src="assets/css/slick/slick.min.js"></script>


        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
	
	</body>
</html>
