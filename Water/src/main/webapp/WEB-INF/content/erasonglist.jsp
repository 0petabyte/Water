<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
<title>Time Music</title>
<meta charset="utf-8">
<c:set var="root" value="<%=request.getContextPath()%>" />
<link rel="stylesheet" href="${root}/dist/css/bootstrap-multiselect.css" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Jua" rel="stylesheet">
<script type="text/javascript" src="dist/js/bootstrap-multiselect.js"></script>
<script type="text/javascript">
	$(function() {
		$('input[name=_selected_all_]').on('change', function() {
			$('input[name=_selected_]').prop('checked', this.checked);
		});
	});
</script>


<!-- 게시글 클릭시 보이게 -->
<script type="text/javascript">
	$(function() {
		$("td.timelist").click(function() {
			//alert("aaa");
			if ($(this).parent().next().css("display") == "none") {
				$(this).parent().next().css("display", "");
			} else {
				$(this).parent().next().css("display", "none");
			}
		});
	});
</script>


<style>
.myButton {
	float: right;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #151b21), color-stop(1, #545557));
	background:-moz-linear-gradient(top, #151b21 5%, #545557 100%);
	background:-webkit-linear-gradient(top, #151b21 5%, #545557 100%);
	background:-o-linear-gradient(top, #151b21 5%, #545557 100%);
	background:-ms-linear-gradient(top, #151b21 5%, #545557 100%);
	background:linear-gradient(to bottom, #151b21 5%, #545557 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#151b21', endColorstr='#545557',GradientType=0);
	background-color:#151b21;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffffff;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:13px;
	font-weight:bold;
	padding:7px 19px;
	text-decoration:none;
	text-shadow:0px 1px 0px #000000;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #545557), color-stop(1, #151b21));
	background:-moz-linear-gradient(top, #545557 5%, #151b21 100%);
	background:-webkit-linear-gradient(top, #545557 5%, #151b21 100%);
	background:-o-linear-gradient(top, #545557 5%, #151b21 100%);
	background:-ms-linear-gradient(top, #545557 5%, #151b21 100%);
	background:linear-gradient(to bottom, #545557 5%, #151b21 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#545557', endColorstr='#151b21',GradientType=0);
	background-color:#545557;
}
.myButton:active {
	position:relative;
	top:1px;
}
a {	text-decoration: none; color: black;}

a:link {
	text-decoration: none;
	color: black;
	cursor: pointer;
}

a:hover {
	text-decoration: none;
	color: red;
}

h2 { 
	font-family: 'Do Hyeon', sans-serif; 
	font-size: 40pt;
}

	@media(max-width: 500px) { 
		
		#albummo {display: none; }
	}



</style>

<script>
    $(function(){
    	$("#icon").click(function(){
    		/* var s1=$("#music").attr("val1"); */
    		$("#frm").attr("action", "chucheonform.do")
    		$("#frm").submit();
    	});
    });

	function chageLangSelect() {
		var langSelect = document
				.getElementById("example-enableCollapsibleOptGroups-enableClickableOptGroups-enableFiltering-includeSelectAllOption");

		// select element에서 선택된 option의 value가 저장된다.
		var selectValue = langSelect.options[langSelect.selectedIndex].value;

		// select element에서 선택된 option의 text가 저장된다.
		var selectText = langSelect.options[langSelect.selectedIndex].text;
		alert(selectValue)

	}
</script>
<script type="text/javascript">
	function enterkey() {
		if (window.event.keyCode == 13) {

			document.search.submit();
		}
	}
</script>


<script>
	function searchbutton_click() {

		document.search.submit();

	}
</script>


</head>

<body>
	<div class="container">
		<br>
		<h2>시대별 차트</h2>
		<p>
			원하시는 곡 라인을 클릭 시 YouTube 영상이 보이게 됩니다. (음원 출처 :YOUTUBE)<br>
			검색어를 입력하지 않을 시 선택 메뉴의 조건으로 전체 곡 대상 검색됩니다.
		</p>

		<div class="example">
		
			<script type="text/javascript">
			
			$(document).ready(function(){
				
			var windowWidth = $( window ).width();
			
			 if(windowWidth > 500) {
				
					$('#yearchose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px', 
						nonSelectedText : "원하는 년도를 선택해주세요",

					});
				
			 } 
			 else {
					 
						$('#yearchose').multiselect({

							enableClickableOptGroups : true,
							enableCollapsibleOptGroups : true,
							enableFiltering : true,
							includeSelectAllOption : true,
							collapseOptGroupsByDefault : true,
							buttonWidth : '100px', 
							nonSelectedText : "년도",

						});
				
			 
			 }});
			
			</script>


			<script type="text/javascript">
			
			$(document).ready(function(){
				
			var windowWidth = $( window ).width();
			
			 if(windowWidth > 500) {
				
					$('#rankchose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px', 
						nonSelectedText : "원하는 랭킹를 선택해주세요",

					});
				
			 } 
			 else {
					 
						$('#rankchose').multiselect({

							enableClickableOptGroups : true,
							enableCollapsibleOptGroups : true,
							enableFiltering : true,
							includeSelectAllOption : true,
							collapseOptGroupsByDefault : true,
							buttonWidth : '100px', 
							nonSelectedText : "랭킹",

						});
				
			 
			 }});

		

</script>

			<script type="text/javascript">
			
			$(document).ready(function(){
				
			var windowWidth = $( window ).width();
			
			 if(windowWidth > 500) {
				
					$('#jangrechose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px', 
						nonSelectedText : "원하는 장르를 선택해주세요",

					});
				
			 } 
			 else {
					 
						$('#jangrechose').multiselect({

							enableClickableOptGroups : true,
							enableCollapsibleOptGroups : true,
							enableFiltering : true,
							includeSelectAllOption : true,
							collapseOptGroupsByDefault : true,
							buttonWidth : '100px', 
							nonSelectedText : "장르",

						});
				
			 
			 }});




</script>




<!-- 
			<form name="_selected_all1_" method="get" action="main.do"
				onsubmit="return check()"></form> -->
		</div>


		<br>
		<div class="container">
			<form name="search" method="get" action="main.do"
				onsubmit="return check()">

					
				<table>
				<tr>
				<td>
					


								<select id="yearchose" multiple="multiple" name="yearchose"
									class="form-control">


									<optgroup label="1960">

										<%
											for (int i = 1964; i <= 1969; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="1970">
										<%
											for (int i = 1970; i <= 1979; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="1980">
										<%
											for (int i = 1980; i <= 1989; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="1990">
										<%
											for (int i = 1990; i <= 1999; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="2000">
										<%
											for (int i = 2000; i <= 2009; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="2010">
										<%
											for (int i = 2010; i <= 2017; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									</select></td><td>
								<select id="rankchose" multiple="multiple"
									name="rankchose" class="form-control">


										<optgroup label="1~10">

											<%
												for (int i = 1; i <= 10; i++) {
											%>
											<option value="<%="s"+i+"s"%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="11~20">
											<%
												for (int i = 11; i <= 20; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="21~30">
											<%
												for (int i = 21; i <= 30; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="31~40">
											<%
												for (int i = 31; i <= 40; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="41~50">
											<%
												for (int i = 41; i <= 50; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="51~60">
											<%
												for (int i = 51; i <= 60; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="61~70">
											<%
												for (int i = 61; i <= 70; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="71~80">
											<%
												for (int i = 71; i <= 80; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="81~90">
											<%
												for (int i = 81; i <= 90; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="91~100">
											<%
												for (int i = 91; i <= 100; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
	</select>
</td><td>

							
								 <select id="jangrechose" multiple="multiple"
									name="jangrechose" class="form-control" >
										<option value="Ballad">Ballad</option>
										
										<option value="Rock">Rock</option>
										<option value="Adult Contemporary">Adult Contemporary</option>
										<option value="Folk">Folk</option>
										<option value="Dance">Dance</option>
										<option value="Hip-hop">Hip-hop</option>
										<option value="Soul">Soul</option>
										<option value="Korean Movie">KoreanMovie</option>
										<option value="Blues">Blues</option>
								</select>
							 <br>


						
						


</td></tr>

					</table>
				
				<br>
				<table>
					<tr>
						<td><select class="form-control" id="keyField"
							name="keyField">
								<option value="title">제목</option>
								<option value="artlist">가수명</option>
								<option value="sunwhiyear">년도</option>
								<option value="gasa">가사</option>
								<option value="sunwhi">랭킹</option>
						</select></td>
												
						
						<td width=350px;><input type="hidden" name="search_param" value="all"
							id="search_param"> <input type="text"
							style="weight: 70%;" class="form-control" name="keyWord"
							placeholder="검색어를 입력해주세요." onkeyup="enterkey()">
							</td>
						<td>

							<button data-toggle="dropdown" id="searchbutton"
								class="btn btn-default" type="button"
								onclick="searchbutton_click();">
								<span id="search_concept" class="glyphicon glyphicon-search"></span>
							</button>
						</td>
					</tr>
				</table>
		</form>
		</div>

		<%-- <a href="#" id="listicon"><img src="${root}/images/music.png" height="40" title="재생목록에 추가"></a>
	<a href="#" id="icon"><img src="${root}/images/likes.png" height="40" title="추천게시판으로 보내기"></a> --%>
		<button type="button" id="icon"
				class="myButton" title="추천게시판으로 보내기">추천하기</button>
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
					<th style="text-align: center;" id="albummo">Album</th>
				</tr>
			</thead>
			<tbody>
			<form action="a" id="frm">
				<c:forEach var="musicdata" begin="${startNum}" end="${endNum}"
					items="${list}">
					<tr>
						<td><input type="checkbox" name="_selected_" id="music"
							value="${musicdata.musicid}" val1="${musicdata.title}"
							val2="${musicdata.artlist}" val3="${musicdata.yourll}"/>
							</td> 
						
						<td class="timelist" align="center">${no}</td>
						<c:set var="no" value="${no-1}" />
						<td class="timelist" align="center"><a
							href="https://www.youtube.com/watch?v=${musicdata.yourll}">${musicdata.title}</a>
						</td>
						<td class="timelist" align="center">${musicdata.artlist}</td>
						<td class="timelist" align="center">${musicdata.jangre}</td>
						<td class="timelist" align="center">${musicdata.sunwhiyear.substring(0,4)}년${musicdata.sunwhi}순위</td>
						<td class="timelist" align="center" id="albummo"><a
							href="${musicdata.musicidurl}"> ${musicdata.album}</a></td>
					</tr>
					<tr style="display: none;" id="scontentsub" class="subshow">
						<td colspan="4" align="center"><iframe width="280"
								height="157"
								src="https://www.youtube.com/embed/${musicdata.yourll}"
								frameborder="0" allowfullscreen></iframe></td>

						<td height="100" val colspan="4" align="center"><div
								style="overflow-y: scroll; height: 100%; width: 100%">
								${musicdata.gasa}</div></td>
					</tr>
				</c:forEach>
				</form>
			</tbody>
		</table>
		<!-- 페이징 -->

		<table style="margin: 0 auto;">
			<tr>
				<td align="center">
					<ul class="pagination">
						<%@ page import="com.project.*"%>
 						<c:if test="${startPage>1}">
							<li><a href="main.do?${nowurl}&pageNum=${startPage-1}">Previous</a></li>
						</c:if>
						<c:forEach var="pg" begin="${startPage}" end="${endPage}">
							<c:if test="${currentPage==pg}">
								<li><a href="main.do?${nowurl}&pageNum=${pg}"
									style="color: red;">${pg}</a></li>
							</c:if>
							<c:if test="${currentPage!=pg}">
								<li><a href="main.do?${nowurl}&pageNum=${pg}"
									style="color: black;">${pg}</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${endPage<totalPage}">
							<li><a href="main.do?${nowurl}&pageNum=${endPage+1}">Next</a></li>
						</c:if>
					</ul>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
