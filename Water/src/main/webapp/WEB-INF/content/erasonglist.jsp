<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
	<title>Barker Music</title>
	<meta charset="utf-8">
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
	<script type="text/javascript">
	$(function(){
		$('input[name=_selected_all_]').on('change', function(){
			$('input[name=_selected_]').prop('checked', this.checked);
		});
	});
	</script>
	<style>
		#listicon, #icon {
			float: right;
			margin-left:10px;
		}
	</style>
		<link rel="stylesheet" href="dist/css/bootstrap-multiselect.css" type="text/css">
        <script type="text/javascript" src="dist/js/bootstrap-multiselect.js"></script>
	
	
</head>
<body>
<div class="container">
	<h2>시대의 명곡 리스트</h2>
	<p>타이틀을 누르면 자동으로 음원이 재생됩니다(음원출처:youtube)</p>
	
       <div class="example">
          <script type="text/javascript">
              $(document).ready(function() {
                  $('#example-enableCollapsibleOptGroups-enableClickableOptGroups-enableFiltering-includeSelectAllOption').multiselect({
                      enableClickableOptGroups: true,
                      enableCollapsibleOptGroups: true,
                      enableFiltering: true,
                      includeSelectAllOption: true,
                      collapseOptGroupsByDefault: true,
                      buttonWidth: '400px',
 
                      
                  });
              });
          </script>
          <select id="example-enableCollapsibleOptGroups-enableClickableOptGroups-enableFiltering-includeSelectAllOption" multiple="multiple" weight="300">
<!--                                             <optgroup label="1960" value="g1960">
                                                <option value="1964" name="1964">1964</option>
                                                <option value="1965" id="1965">1965</option>
                                                <option value="1966" id="1966">1966</option>
                                                <option value="1967" id="1967">1967</option>
                                                <option value="1968" id="1968">1968</option>
                                                <option value="1969" id="1969">1969</option>
                                            </optgroup> -->
      <optgroup label="1960">
     <%for(int i=1964; i<=1969; i++){ %>
     <option value="<%=i%>"><%=i%></option>
     <%} %>
     </optgroup>
     <optgroup label="1970">
     <%for(int i=1970; i<=1979; i++){ %>
     <option value="<%=i%>"><%=i%></option>
     <%} %>
     </optgroup>
     <optgroup label="1980">
     <%for(int i=1980; i<=1989; i++){ %>
     <option value="<%=i%>"><%=i%></option>
     <%} %>
     </optgroup>
     <optgroup label="1990">
     <%for(int i=1990; i<=1999; i++){ %>
     <option value="<%=i%>"><%=i%></option>
     <%} %>
     </optgroup>
     <optgroup label="2000">
     <%for(int i=2000; i<=2009; i++){ %>
     <option value="<%=i%>"><%=i%></option>
     <%} %>
     </optgroup>
     <optgroup label="2010">
     <%for(int i=2010; i<=2017; i++){ %>
     <option value="<%=i%>"><%=i%></option>
     <%} %>
     </optgroup>
     </select>
     </div>           
	
	
	<a href="#" id="listicon"><img src="${root}/images/music.png" height="40"></a>
	<a href="#" id="icon"><img src="${root}/images/likes.png" height="40"></a>
	<table class="table table-hover">
		<thead>
			<tr>
			<th><input type="checkbox" name="_selected_all_"></th>
				<th style="text-align: center;">No</th>
				<th style="text-align: center;">타이틀</th>
				<th style="text-align: center;">가수명</th>
				<th style="text-align: center;">장르</th>
				<th style="text-align: center;">명곡년도</th>
				<th style="text-align: center;">당시순위</th>
				<th style="text-align: center;">앨범명</th>
			</tr>
		</thead>
    	<tbody>
    		<c:forEach var="musicdata" begin="${startNum}" end="${endNum}" items="${list}" >
    		<tr>
    			<td><input type="checkbox" name="_selected_" id="music" 
    			  value="${musicdata.title}"/></td>
				<td align="center">${no}</td>	
				<c:set var="no" value="${no-1}"/>
				<td align="center">
				<a href="https://www.youtube.com/watch?v=${musicdata.yourll}">${musicdata.title}</a>
				<br>
				<br>
				<iframe width="280" height="157" src="https://www.youtube.com/embed/${musicdata.yourll}" frameborder="0" allowfullscreen></iframe>
				</td>		
    			<td align="center">${musicdata.artlist}</td>
    			<td align="center">${musicdata.jangre}</td>
    			


    			<td align="center">${musicdata.sunwhiyear.substring(0,4)}</td>
    			<td align="center">${musicdata.sunwhi}</td>
    			<td align="center">
    			<a href="${musicdata.musicidurl}" > ${musicdata.album}</a></td>
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
    		<li><a href="main.do?pageNum=${startPage-1}">Previous</a></li>   				 
	   	</c:if>
	   	<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	   		<c:if test="${currentPage==pg}">
	   			<li><a href="main.do?pageNum=${pg}" style="color:red;">${pg}</a></li>
	   		</c:if>
	   		<c:if test="${currentPage!=pg}">
	   			<li><a href="main.do?pageNum=${pg}" style="color:black;">${pg}</a></li>
	   		</c:if>
	   	</c:forEach>
	   	<c:if test="${endPage<totalPage}">
	   		<li><a href="main.do?pageNum=${endPage+1}">Next</a></li>   
	   	</c:if>
	   	</ul>
	   	</td>
	   	</tr>
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
