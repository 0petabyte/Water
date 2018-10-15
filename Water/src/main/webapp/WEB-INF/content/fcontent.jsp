<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Welcome</title>
		<style type="text/css">
			
		</style>
		<script type="text/javascript">
			$(function(){
				$("#acount").click(function(){
					$("#answer").slideToggle('slow')
				});
			});
		</script>
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
	<body data-spy="scroll" data-target=".navbar-collapse">
	<br><br>
		<table class="table table-hover" style="width: 700px; margin: 0 auto;">
			<caption><b>게시글확인</b></caption>
			<tr>
				<td>
					<b>작성자 : ${dto.fwriter}</b>
					(<span style="font-size: 9pt;color: #ccc;">
					<fmt:formatDate value="${dto.fdate}" pattern="yyyy-MM-dd HH:mm"/>
					</span>)
				</td>
			</tr>
			<tr>
				<td style="text-align: left;">제목 : ${dto.ftitle}</td>
			</tr>
			<tr height="300" valign="top">
				<td style="text-align: left;">
					<pre>${dto.fcontent}</pre>
					<br>
					<br>
					<b style="cursor:pointer;" id="acount">댓글 ${acount}</b><br>
					<answer id="answer" style="display: none;">
						<c:forEach var="a" items="${alist}">
							<b style="padding-left:20px; font-size: 10pt;">
							${a.fawriter}</b>:&nbsp;&nbsp;${a.facontent}&nbsp;&nbsp;
							<span style="font-size: 9pt; color: #ccc;">
								<fmt:formatDate value="${a.fadate}"
								pattern="yyyy-MM-dd HH:mm"/><br>
							</span>
						</c:forEach>
					</answer>
				</td>
			</tr>
			
			<!-- 댓글 폼 -->
			<tr>
				<td align="center">
					<form action="fanswer.do" method="post" class="form-inline">
						<div class="form-group">
							<input type="text" name="fawriter" style="width: 130px; height: 30px;"
								placeholder="작성자">&nbsp;
							<input type="text" name="facontent" style="width: 350px;height: 30px;"
								placeholder="댓글쓰기">
							<!-- 댓글은 원글번호,페이지번호를 히든으로 같이줘야함 -->
							<input type="hidden" name="f_num" value="${dto.f_num}">
							<input type="hidden" name="pageNum" value="${pageNum}">
							&nbsp;&nbsp;
							<input type="submit" value="저장" class="btn-sm"style="width: 80px;">
						</div>
					</form>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="button" class="btn btn-lg"
						value="글쓰기" onclick="location.href='fwriteform.do'">
					<input type="button" class="btn btn-lg"
						value="수정" 
						onclick="location.href='fupdateform.do?f_num=${dto.f_num}&pageNum=${pageNum}'">
					<input type="button" class="btn btn-lg"
						value="삭제" 
						onclick="location.href='fdelete.do?f_num=${dto.f_num}&pageNum=${pageNum}'">
					<input type="button" class="btn btn-lg"
						value="목록" 
						onclick="location.href='free.do?pageNum=${pageNum}'">
				</td>
			</tr>
		</table>
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
