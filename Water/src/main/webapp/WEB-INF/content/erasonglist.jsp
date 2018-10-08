<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
	<title>Time Music</title>
	<meta charset="utf-8">
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<link rel="stylesheet" href="${root}/dist/css/bootstrap-multiselect.css" type="text/css">
    <script type="text/javascript" src="dist/js/bootstrap-multiselect.js"></script>
	<script type="text/javascript">
	$(function(){
		$('input[name=_selected_all_]').on('change', function(){
			$('input[name=_selected_]').prop('checked', this.checked);
		});
	});
	</script>
	
	<script type="text/javascript">
	$(function(){
		$('input[id=_selected_all1_]').on('change', function(){
			$('input[id=_selected1_]').prop('checked', this.checked);
		});
	});
	</script>
	
	        

   <script type="text/javascript">
   	$(function(){
   		$("td.timelist").click(function(){
   			//alert("aaa");
   			if($(this).parent().next().css("display")=="none"){
   				$(this).parent().next().css("display","");
   			}else{
   				$(this).parent().next().css("display","none");
   			}
   		});
   	});
   	
   </script>
   
   
   <script type="text/javascript">
   
	$(function(){
		$("#goicon").click(function(){
			var selnum=document.getElementsByName("_selected1_");
			//alert(selnum.length);
			var cnt=0;
			/* for(i=0;i<selnum.length;i++){
				if (selnum[i].checked){
					cnt++;
					var title=$(selnum[i]).val();
					//alert("재생목록에 "+title+" 이(가) 추가되었습니다.");
					//$("#mylist ul").append("<li>"+title+"</li>");
					$("#tbl_tbody").append("<tr><td><input type='checkbox' name='selected'/></td><td>"+title+"</td></tr>");
				}
				
			} */
			for(i=0;i<selnum.length;i++){
				if (selnum[i].checked){
					cnt++;
					title=$(selnum[i]).attr('val1');
					artist=$(selnum[i]).attr('val2');
					youurl=$(selnum[i]).attr('val3');
					var str1="<tr><td><input type='checkbox' name='selected'/></td><td class='songlst'>"+artist
						+" - "+title+"<br><iframe width='100' height='56' src='https://www.youtube.com/embed/"
						+youurl+"' frameborder='0' allowfullscreen></iframe></td></tr>";
					$("#tbl_tbody").append(str1);
					
					/* $("#tbl_tbody").append("<tr><td><input type='checkbox' name='selected'/></td><td>"+artist+" - "+title+"</td></tr>");
					$("#tbl_tbody").append("<br><iframe width='100' height='56' src='https://www.youtube.com/embed/"+youurl+"' frameborder='0' allowfullscreen></iframe>"); */
					
				}
				
			}
			
			if(cnt==0){
				alert("선택된 년도가 없습니다.");
			}else {
				alert("재생목록에 "+cnt+" 곡이 추가되었습니다.");
			}
			/* if($("#music").is(":checked"))
				$("#mylist ul").append("<li>list</li>"); */
				
			/* alert("재생목록에 1곡 추가되었습니다."); */
		});
	});
	/*재생리스트 selectbox*/
	$(function(){
		$('input[name=selected_all]').on('change', function(){
			$('input[name=selected]').prop('checked', this.checked);
		});
	});
   
   </script>
   
	
	
	<style>
	.myButton {
	float: right;
	margin-left: 10px;
	
	-moz-box-shadow:inset 0px 0px 0px -50px #535961;
	-webkit-box-shadow:inset 0px 0px 0px -50px #535961;
	box-shadow:inset 0px 0px 0px -50px #535961;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #615c61), color-stop(1, #3b323b));
	background:-moz-linear-gradient(top, #615c61 5%, #3b323b 100%);
	background:-webkit-linear-gradient(top, #615c61 5%, #3b323b 100%);
	background:-o-linear-gradient(top, #615c61 5%, #3b323b 100%);
	background:-ms-linear-gradient(top, #615c61 5%, #3b323b 100%);
	background:linear-gradient(to bottom, #615c61 5%, #3b323b 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#615c61', endColorstr='#3b323b',GradientType=0);
	background-color:#615c61;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-size:13px;
	padding:10px 12px;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #3b323b), color-stop(1, #615c61));
	background:-moz-linear-gradient(top, #3b323b 5%, #615c61 100%);
	background:-webkit-linear-gradient(top, #3b323b 5%, #615c61 100%);
	background:-o-linear-gradient(top, #3b323b 5%, #615c61 100%);
	background:-ms-linear-gradient(top, #3b323b 5%, #615c61 100%);
	background:linear-gradient(to bottom, #3b323b 5%, #615c61 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3b323b', endColorstr='#615c61',GradientType=0);
	background-color:#3b323b;
}
.myButton:active {
	position:relative;
	top:1px;
}
	</style>
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
          
          
          
          
          
          <form name = "_selected_all1_" method = "get" action ="main.do" onsubmit="return check()">
          <select name="_selected1_" id="example-enableCollapsibleOptGroups-enableClickableOptGroups-enableFiltering-includeSelectAllOption" multiple="multiple" >
			
			 
		      <optgroup label="1960" id="_selected_all1_">
		     <%for(int i=1964; i<=1969; i++){ %>
		     <option id ="_selected1_" value="<%=i%>"><%=i%></option>
		     <%} %>
		     </optgroup>
		     <optgroup label="1970">
		     <%for(int i=1970; i<=1979; i++){ %>
		     <option id ="_selected1_" value="<%=i%>"><%=i%></option>
		     <%} %>
		     </optgroup>
		     <optgroup label="1980">
		     <%for(int i=1980; i<=1989; i++){ %>
		     <option id ="_selected1_" value="<%=i%>"><%=i%></option>
		     <%} %>
		     </optgroup>
		     <optgroup label="1990">
		     <%for(int i=1990; i<=1999; i++){ %>
		     <option id ="_selected1_" value="<%=i%>"><%=i%></option>
		     <%} %>
		     </optgroup>
		     <optgroup label="2000">
		     <%for(int i=2000; i<=2009; i++){ %>
		     <option id ="_selected1_" value="<%=i%>"><%=i%></option>
		     <%} %>
		     </optgroup>
		     <optgroup label="2010" id ="_selected1_">
		     <%for(int i=2010; i<=2017; i++){ %>
		     <option id ="_selected1_" value="<%=i%>"><%=i%></option>
		     <%} %>
		     </optgroup>
		     </select>
		     <button type="button" id="goicon" class="myButton" title="옵션에맞는 목록만불러오기">Go!</button>
		     </form>
		     </div>           
		     
     
     <br>
     <div class="container">
     <form name = "search" method = "get" action ="main.do" onsubmit="return check()">
     <div class="row">    
        <div class="col-xs-6 col-xs-offset-2">
		    <div class="input-group">
		    
		    <div class="form-group">

		  		</div>
                <div class="input-group-btn search-panel">
                <span>
                <select style="width:150px;" class="form-control" id="keyField" name="keyField" >
		  <option value="title" >제목</option>
		  <option value="artlist">가수명</option>
		  <option value="sunwhiyear">년도</option>
		  <option value="gasa">가사</option>
		  </select>
                </span>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="keyWord" placeholder="검색어를 입력해주세요.">
                <span class="input-group-btn">
                <button data-toggle="dropdown" id="a" class="btn btn-default" type="button"><span id="search_concept" class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
            	<script>
	$(document).ready(function(e){
	    $('.form-control .dropdown-menu').find('a').click(function(e) {
			e.preventDefault();
			var param = $(this).attr("href").replace("#","");
			var concept = $(this).text();
			$('.search-panel span#search_concept').text(concept);
			$('.input-group #search_param').val(param);
			alert(concept);
		});
	});
	
	</script>
        </div>
	</div>

	</form>

	</div>
	<%-- <a href="#" id="listicon"><img src="${root}/images/music.png" height="40" title="재생목록에 추가"></a>
	<a href="#" id="icon"><img src="${root}/images/likes.png" height="40" title="추천게시판으로 보내기"></a> --%>
	<button type="button" id="icon" class="myButton" title="추천게시판으로 보내기">추천하기</button>
	<button type="button" id="listicon" class="myButton" title="재생목록에 추가">리스트담기</button>
	<table class="table table-hover">
		<thead>
			<tr>
				<td><input type="checkbox" name="_selected_all_"></td>
				<th style="text-align: center;">No</th>
				<th style="text-align: center;">Title</th>
				<th style="text-align: center;">Singer</th>
				<th style="text-align: center;">Genre</th>
				<th style="text-align: center;">Ranking</th>
				<th style="text-align: center;">Album</th>
			</tr>
		</thead>
    	<tbody>
    		<c:forEach var="musicdata" begin="${startNum}" end="${endNum}" items="${list}" >
    		<tr>
    			<td><input type="checkbox" name="_selected_" id="music" 
    			  value="${musicdata.title}" val1="${musicdata.title}" val2="${musicdata.artlist}" val3="${musicdata.yourll}"/></td>
				<td class ="timelist" align="center">${no}</td>	
				<c:set var="no" value="${no-1}"/>
				<td class ="timelist" align="center">
				<a href="https://www.youtube.com/watch?v=${musicdata.yourll}">${musicdata.title}</a>
				</td>	
    			<td class ="timelist" align="center">${musicdata.artlist}</td>
    			<td class ="timelist" align="center">${musicdata.jangre}</td>
       			<td class ="timelist" align="center">${musicdata.sunwhiyear.substring(0,4)}년${musicdata.sunwhi}위</td>    			
    			<td class ="timelist" align="center"><a href="${musicdata.musicidurl}" > ${musicdata.album}</a></td>
				</tr>
				<tr style="display: none;" id="scontentsub" class="subshow" >
          		<td colspan="4" align="center">
				<iframe width="280" height="157" src="https://www.youtube.com/embed/${musicdata.yourll}" frameborder="0" allowfullscreen></iframe>
				</td>
				 
				<td height="100" val colspan="4" align="center"><div style="overflow-y:scroll; height:100%; width:100%">
				${musicdata.gasa}</div>
			</td></tr>
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
