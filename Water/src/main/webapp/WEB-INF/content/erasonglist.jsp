<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
<title>Time Music</title>
<meta charset="utf-8">
<c:set var="root" value="<%=request.getContextPath()%>" />
<link rel="stylesheet" href="${root}/dist/css/bootstrap-multiselect.css"
	type="text/css">
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
	margin-left: 10px;
	-moz-box-shadow: inset 0px 0px 0px -50px #535961;
	-webkit-box-shadow: inset 0px 0px 0px -50px #535961;
	box-shadow: inset 0px 0px 0px -50px #535961;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #615c61
		), color-stop(1, #3b323b));
	background: -moz-linear-gradient(top, #615c61 5%, #3b323b 100%);
	background: -webkit-linear-gradient(top, #615c61 5%, #3b323b 100%);
	background: -o-linear-gradient(top, #615c61 5%, #3b323b 100%);
	background: -ms-linear-gradient(top, #615c61 5%, #3b323b 100%);
	background: linear-gradient(to bottom, #615c61 5%, #3b323b 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#615c61',
		endColorstr='#3b323b', GradientType=0);
	background-color: #615c61;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-size: 13px;
	padding: 10px 12px;
}

.myButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #3b323b
		), color-stop(1, #615c61));
	background: -moz-linear-gradient(top, #3b323b 5%, #615c61 100%);
	background: -webkit-linear-gradient(top, #3b323b 5%, #615c61 100%);
	background: -o-linear-gradient(top, #3b323b 5%, #615c61 100%);
	background: -ms-linear-gradient(top, #3b323b 5%, #615c61 100%);
	background: linear-gradient(to bottom, #3b323b 5%, #615c61 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#3b323b',
		endColorstr='#615c61', GradientType=0);
	background-color: #3b323b;
}

.myButton:active {
	position: relative;
	top: 1px;
}
</style>


<script>
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


<body>








	<div class="container">
		<h2>시대의 명곡 리스트</h2>
		<p>
			원하시는 곡 라인을 클릭시 Youtube 영상이 보이게 됩니다(음원출처:youtube)<br> 검색어를
			입력하지않을시 선택메뉴의 조건으로 전체곡대상 검색됩니다.
		</p>

		<div class="example">
			<script type="text/javascript">
				$(document).ready(function() {
					$('#yearchose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px',
						nonSelectedText : "원하는 년도를 선택해주세요",

					});
				});
			</script>

			<script type="text/javascript">
				$(document).ready(function() {
					$('#rankchose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px',
						nonSelectedText : "원하는 랭킹을 선택해주세요",

					});
				});
			</script>

			<script type="text/javascript">
				$(document).ready(function() {
					$('#jangrechose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px',
						nonSelectedText : "원하는 장르를 선택해주세요",

					});
				});
			</script>



			<form name="_selected_all1_" method="get" action="main.do"
				onsubmit="return check()"></form>
		</div>


		<br>
		<div class="container">
			<form name="search" method="get" action="main.do"
				onsubmit="return check()">






				<div class="row">
					<div class="col-xs-1 col-xs-offset-1">
						<div class="input-group">

							<div class="form-group"></div>
							<div class="input-group-btn search-panel">

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
								</select> <span> <select id="rankchose" multiple="multiple"
									name="rankchose" class="form-control">


										<optgroup label="1~10">

											<%
												for (int i = 1; i <= 10; i++) {
											%>
											<option value="<%="0"+i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="11~20">
											<%
												for (int i = 10; i <= 20; i++) {
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
								</span> <span> <select id="jangrechose" multiple="multiple"
									name="jangrechose" class="form-control">
										<option value="Ballad">Ballad</option>
										<option value="Rock">Rock</option>
										<option value="Adult Contemporary">Adult Contemporary</option>
										<option value="Folk">Folk</option>
										<option value="Dance">Dance</option>
										<option value="Hip-hop">Hip-hop</option>
										<option value="Soul">Soul</option>
										<option value="Korean Movie">KoreanMovie</option>
								</select>
								</span> <br>


							</div>
						</div>

					</div>
				</div>
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
						</select>
						<td><input type="hidden" name="search_param" value="all"
							id="search_param"> <input type="text"
							style="weight: 70%;" class="form-control" name="keyWord"
							placeholder="검색어를 입력해주세요." onkeyup="enterkey()">
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
		<a href="${root}/chucheonform.do"><button type="button" id="icon"
				class="myButton" title="추천게시판으로 보내기">추천하기</button></a>
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
				<c:forEach var="musicdata" begin="${startNum}" end="${endNum}"
					items="${list}">
					<tr>
						<td><input type="checkbox" name="_selected_" id="music"
							value="${musicdata.title}" val1="${musicdata.title}"
							val2="${musicdata.artlist}" val3="${musicdata.yourll}"
							var4="${musicdata.musicid }" /></td> 
						
						<td class="timelist" align="center">${no}</td>
						<c:set var="no" value="${no-1}" />
						<td class="timelist" align="center"><a
							href="https://www.youtube.com/watch?v=${musicdata.yourll}">${musicdata.title}</a>
						</td>
						<td class="timelist" align="center">${musicdata.artlist}</td>
						<td class="timelist" align="center">${musicdata.jangre}</td>
						<td class="timelist" align="center">${musicdata.sunwhiyear.substring(0,4)}년${musicdata.sunwhi}순위</td>
						<td class="timelist" align="center"><a
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



