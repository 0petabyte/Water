<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
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
		<a href="writeform.do"><button type="button" id="btnwrite" class="btn btn-sm btn-info">글쓰기</button></a>
	</body>
</html>
