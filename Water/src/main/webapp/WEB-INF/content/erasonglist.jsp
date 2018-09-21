<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
	<title>Barker Music</title>
	<meta charset="utf-8">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body>
<div class="container">
	<h2>시대의 명곡 리스트</h2>
	<p>타이틀을 누르면 자동으로 음원이 재생됩니다(음원출처:youtube)</p>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>No</th>
				<th>타이틀</th>
				<th>가수명</th>
				<th>당시순위</th>
				<th>앨범명</th>
			</tr>
		</thead>
    	<tbody>
    		<c:forEach var="musicdata" items="${list}" varStatus="i">
    		<tr>
    			<td align="center">${i.count}</td>
    			<td align="center">
    				<a href ="https://www.youtube.com${musicdata.youtubeurl}">${musicdata.title}</td>
    			<td align="center">${musicdata.artlist}</td>
    			<td align="center">${musicdata.sunwhi}</td>
    			<td align="center">
    				<a href="${musicdata.musicidurl}" > ${musicdata.album}</a></td>
    		</tr>
    		</c:forEach>
    	</tbody>
    </table>
</div>
</body>
</html>


<!-- 지웅 이전 수정데이터 백업 -->


<%-- <div class="container" magin-top="10px">


  <h2>원하는 음악종류를 선택하세요</h2>
   <table class="table table-hover">
   
    <form role="form">
    <label class="checkbox-inline">
      <input type="checkbox" value="">2011
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">2012
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">2013
    </label>
  </form>

  <form role="form">
    <label class="checkbox-inline">
      <input type="checkbox" value="">발라드
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">댄스
    </label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">트로트
    </label>
  </form>


		<c:if test="${count==0}">
				<b>저장된 데이터가 없습니다.</b>
		</c:if>
		<c:if test="${count>0}">
		<!-- 게시글의 갯수가 red 색상 -->
		<b>총<span style="color:red;">${count}</span>개의 데이타가 있습니다.</b>
		</c:if>
<!-- 		<input type="button" class="btn btn-sm btn-success" value="멤버등록" 
		onclick="location.href='writeform.do'" style="magin-left:50px;"> -->
<!-- 		<table style="magin:0 auto;" class="table table-hover"> -->

		<tr bgcolor="#919191">

			<th style="text-align: center;">No</th>
			<th style="text-align: center;">노래제목</th>
			<th style="text-align: center;">가수명</th>
			<th style="text-align: center;">당시순위</th>
			<th style="text-align: center;">앨범명</th>

<!-- 			<th style="text-align: center;">노래고유번호</th>
			
			<th style="text-align: center;">노래정보url</th>
			<th style="text-align: center;">유투브url</th> -->
		</tr>	
		<c:forEach var="musicdata" items="${list}" varStatus="i">
			<tr>
				<td align="center">${i.count}</td>	
				<td align="center">
				<a href ="https://www.youtube.com${musicdata.youtubeurl}">${musicdata.title}</td>
				<td align="center">${musicdata.artlist}</td>
				<td align="center">${musicdata.sunwhi}</td>
				

				
				<td align="center">
				<a href="${musicdata.musicidurl}" > ${musicdata.album}</a></td>
				<td align="center">${musicdata.musicid}</td>
				
				<td align="center">
				<a href="${musicdata.musicidurl}" > ${musicdata.musicidurl} </a></td>
				<td align="center">
				<a href="${musicdata.musicidurl}" > ${musicdata.musicidurl} </a></td>

				<td align="center">
				
				<!-- 버튼색 info:파랑 danger 빨강 -->
				<input type="button" value="수정" class="btn btn-cs btn-info"
				onclick="location.href='updateform.do?name=${dto.name}'">
				<input type="button" value="삭제" class="btn btn-cs btn-danger"
				onclick="location.href='delete.do?name=${dto.name}'">
				</td>
			</tr>
		</c:forEach>
	</table>
	</div> --%>
