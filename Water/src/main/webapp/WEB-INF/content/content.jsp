<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
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
	</head> 
	<body>
	<br><br>
		<table class="table table-hover" style="width: 700px; margin: 0 auto;">
			<caption><b>게시글확인</b></caption>
			<tr>
				<td>
					<b>작성자 : ${dto.ewriter}</b>
					(<span style="font-size: 9pt;color: #ccc;">
					<fmt:formatDate value="${dto.edate}" pattern="yyyy-MM-dd HH:mm"/>
					</span>)
				</td>
			</tr>
			<tr>
				<td style="text-align: left;">제목 : ${dto.etitle}</td>
			</tr>
			<tr height="300" valign="top">
				<td style="text-align: left;">
					<pre>${dto.econtent}</pre>
					<br>
					<c:if test="${dto.imgname!='none'}">
						<c:forTokens var="myimg" items="${dto.imgname}" delims=":" varStatus="i">
							<c:set var="root" value="<%=request.getContextPath() %>"/>
							<c:if test="${flist[i.index]=='yes'}">
								<img src="${root}/save/${myimg}" style="max-width: 400px;">
							</c:if>
							<br>
						</c:forTokens>
					</c:if>
					<br>
					<b style="cursor:pointer;" id="acount">댓글 ${acount}</b><br>
					<answer id="answer" style="display: none;">
						<c:forEach var="a" items="${alist}">
							<b style="padding-left:20px; font-size: 10pt;">
							${a.awriter}</b>:&nbsp;&nbsp;${a.acontent}&nbsp;&nbsp;
							<span style="font-size: 9pt; color: #ccc;">
								<fmt:formatDate value="${a.adate}"
								pattern="yyyy-MM-dd HH:mm"/><br>
							</span>
						</c:forEach>
					</answer>
				</td>
			</tr>
			
			<!-- 댓글 폼 -->
			<tr>
				<td align="left">
					<form action="answer.do" method="post" class="form-inline">
						<div class="form-group">
							<input type="text" name="awriter" style="width: 130px;"
								placeholder="작성자">
							<input type="text" name="acontent" style="width: 500px;"
								placeholder="댓글쓰기">
							<!-- 댓글은 원글번호,페이지번호를 히든으로 같이줘야함 -->
							<input type="hidden" name="e_num" value="${dto.e_num}">
							<input type="hidden" name="pageNum" value="${pageNum}">
							
							<input type="submit" value="저장" class="btn btn-xs btn-default">
						</div>
					</form>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" class="btn btn-sm btn-info"
						value="글쓰기" onclick="location.href='writeform.do'">
					<input type="button" class="btn btn-sm btn-success"
						value="수정" 
						onclick="location.href='updateform.do?e_num=${dto.e_num}&pageNum=${pageNum}'">
					<input type="button" class="btn btn-sm btn-warning"
						value="삭제" 
						onclick="location.href='delete.do?e_num=${dto.e_num}&pageNum=${pageNum}'">
					<input type="button" class="btn btn-sm btn-danger"
						value="목록" 
						onclick="location.href='error.do?pageNum=${pageNum}'">
				</td>
			</tr>
		</table>
	</body>
</html>
