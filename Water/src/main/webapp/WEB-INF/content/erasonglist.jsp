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
<<<<<<< HEAD
		#listicon, #icon {
			float: right;
			margin-left:10px;
		}
	</style>
=======
		#icon {
			float: right;
			margin-left:10px;
		}
	</style>
	
	    <link rel="stylesheet" href="dist/css/bootstrap-multiselect.css" type="text/css">
        <script type="text/javascript" src="dist/js/bootstrap-multiselect.js"></script>
	
	
>>>>>>> branch 'master' of https://github.com/0petabyte/Water.git
</head>
<body>




<div class="container">
	<h2>시대의 명곡 리스트</h2>
	<p>타이틀을 누르면 자동으로 음원이 재생됩니다(음원출처:youtube)</p>
<<<<<<< HEAD
	<a href="#" id="listicon"><img src="${root}/images/music.png" height="40"></a>
=======


<div class="container">
         
  <table class="table table-bordered">

    <tbody>
      <tr>
        <th>년도</th>
        <th>						<input type="checkbox" name="check" > <span class="label-text">1950</span></th>
        <th>						<input type="checkbox" name="check" > <span class="label-text">1960</span></th>
        <th>						<input type="checkbox" name="check" > <span class="label-text">1970</span></th>
        <th>						<input type="checkbox" name="check" > <span class="label-text">1980</span></th>
        <th>						<input type="checkbox" name="check" > <span class="label-text">1990</span></th>
        <th>						<input type="checkbox" name="check" > <span class="label-text">2000</span></th>
        <th>						<input type="checkbox" name="check" > <span class="label-text">2010</span></th>
      </tr>
      <tr>
        <th>장르</th>
        <th>						<input type="checkbox" name="check" > <span class="label-text">발라드</span></th>
		<th>						<input type="checkbox" name="check" > <span class="label-text">댄스</span></th>
		<th>						<input type="checkbox" name="check" > <span class="label-text">R&B</span></th>
		<th>						<input type="checkbox" name="check" > <span class="label-text">ROCK</span></th>
      </tr>
      <tr>
        <th>RANK</th>
<th>						<input type="checkbox" name="check" > <span class="label-text">1~10</span></th>
<th>						<input type="checkbox" name="check" > <span class="label-text">11~20</span></th>
<th>						<input type="checkbox" name="check" > <span class="label-text">21~30</span></th>
      </tr>
    </tbody>
  </table>
</div>
	
	
                            

                                    <p>
                                        The <code>enableFiltering</code> option can also be used in combination with <code>optgroup</code>'s.
                                    </p>
                                    <div class="example">
                                        <script type="text/javascript">
                                            $(document).ready(function() {
                                                $('#example-enableFiltering-optgroups').multiselect({
                                                    enableFiltering: true
                                                });
                                            });
                                        </script>
                                        <select id="example-enableFiltering-optgroups" multiple="multiple">
                                            <optgroup label="Group 1">
                                                <option value="1-1">Option 1.1</option>
                                                <option value="1-2" selected="selected">Option 1.2</option>
                                                <option value="1-3" selected="selected">Option 1.3</option>
                                            </optgroup>
                                            <optgroup label="Group 2">
                                                <option value="2-1">Option 2.1</option>
                                                <option value="2-2">Option 2.2</option>
                                                <option value="2-3">Option 2.3</option>
                                            </optgroup>
                                        </select>
                                    </div>



	
	
	
	
	
	<a href="#" id="icon"><img src="${root}/images/music.png" height="40"></a>
>>>>>>> branch 'master' of https://github.com/0petabyte/Water.git
	<a href="#" id="icon"><img src="${root}/images/likes.png" height="40"></a>
	<table class="table table-hover">
		<thead>
			<tr>
			<th><input type="checkbox" name="_selected_all_"></th>
				<th style="text-align: center;">No</th>
				<th style="text-align: center;">타이틀</th>
				<th style="text-align: center;">가수명</th>
				<th style="text-align: center;">RANK</th>
				<th style="text-align: center;">앨범명</th>
			</tr>
		</thead>
    	<tbody>
    		<c:forEach var="musicdata" begin="${startNum}" end="${endNum}" items="${list}" >
    		<tr>
<<<<<<< HEAD
    			<td><input type="checkbox" name="_selected_" id="music" 
    			  value="${musicdata.title}"/></td>
=======
    		<td><input type="checkbox" name="_selected_"/></td>
>>>>>>> branch 'master' of https://github.com/0petabyte/Water.git
				<td align="center">${no}</td>	
				<c:set var="no" value="${no-1}"/>
				<td align="center">
				<a href="https://www.youtube.com/watch?v=${musicdata.yourll}">${musicdata.title}</a>
				<br>
				<br>
				<iframe width="280" height="157" src="https://www.youtube.com/embed/${musicdata.yourll}" frameborder="0" allowfullscreen></iframe>
<%-- 				<iframe width="560" height="315" src='https://www.youtube.com/watch?v=${musicdata.yourll}' frameborder="0" allowfullscreen></iframe> --%>
				<%-- <object data="https://www.youtube.com/watch?v=${musicdata.yourll}" width="360" height="202"></object> --%>
				</td>
						
    			<td align="center">${musicdata.artlist}</td>
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



<script type="text/javascript">
    $(document).ready(function() {
        $('#example-example-enableFiltering-optgroups').multiselect({
            enableFiltering: true
        });
    });
</script>


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
