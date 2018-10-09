<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
	<title>Time Music</title>
	<meta charset="utf-8">
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<link rel="stylesheet" type="text/css" href="${root}/css/topstyle.css">
	<!-- <script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script> -->
	<script type="text/javascript">
	$(function(){
		$("#playlist").click(function(){
			$("#mylist").slideToggle('fast');
		});
	});
	
	/*재생리스트*/
	$(function(){
		$("#listicon").click(function(){
			var selnum=document.getElementsByName("_selected_");
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
				alert("선택된 노래가 없습니다.");
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
	
	/*스크롤이벤트*/
	$(document).ready(function(){ 
		// 스크롤 발생시 실행됨 
		$(window).scroll(function(){
			$(document).scrollTop(); // 상단에서 부터 이동한 스크롤 높이 (단위 : 픽셀)
			// 아이디가 "scroll-text" 레이어에 스크롤 높이를 기록함.
			$("#scroll-text").text($(document).scrollTop());
			if($(document).scrollTop() >= 100){
				//alert("스크롤된 높이는 "+$(document).scrollTop()+"입니다.");
				$("#headerbox").hide();
			}
			else
				$("#headerbox").show();
		});
    });
	</script>
	<style>
	#headerbox { 
		/* height: 60px;
		background: #acb6e5;
		background: -webkit-linear-gradient(to right, #86fde8, #acb6e5);
		background: linear-gradient(to right, #86fde8, #acb6e5); */
		background: #1e2022;
		
		/*가운데정렬*/
		display: flex;
		align-items: center;
		justify-content: center;
	}
	@media(min-width: 750px) { 
		#headerbox { height: 100px; }
		#logo {	height: 60px; }
	}
	#logo {	height: 60px; }
	#lst tr { border-bottom: 1px dotted gray; }
	.songlst {
		text-align: left;
		padding-left: 15px; }
	#tbl_thead { border-bottom: 1px solid black; }
	table { margin: 0 auto; }
	</style>
</head>
<body>
<div style="margin-bottom:0" id="headerbox">
	<img src="${root}/images/logo2.png" id="logo">
	<!-- <p id="tit">Barker Music</p>
	<p id="subtit">시대의명곡을 무료로즐기자!</p>  -->
</div>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- <a class="navbar-brand" href="#">WebSiteName</a> -->
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="menulist"><a href="${root}/main.do" style="color:#52616a;">시대별차트</a></li>
				<li class="menulist"><a href="${root}/reallist.do" style="color:#52616a;">실시간차트</a></li>
				<li class="menulist"><a href="${root}/halloffame.do" style="color:#52616a;">명예의전당</a></li>
				<li class="menulist"><a href="${root}/sns.do" style="color:#52616a;">실시간음원SNS반응</a></li>
				<li class="menulist"><a href="${root}/chucheon.do" style="color:#52616a;">추천노래</a></li>
				<li class="menulist"><a href="${root}/error.do" style="color:#52616a;">오류신고</a></li>
				<li class="menulist"><a href="${root}/test.do" style="color:#52616a;">test</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li class="menulist"><a href="#" id="playlist" style="color: #52616a;">PlayList</a></li>
				<li class="menulist"><a href="#" style="color: #52616a;"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li class="menulist"><a href="#" style="color: #52616a;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
</nav>
	<div id="mylist" style="display: none; position: absolute; ">
		<h4><b>재생목록</b></h4>
		<div style="height: 550px; overflow-y: auto;">
			<table id="lst">
      			<colgroup><col width="20px"><col width="300px"></colgroup>
      			<thead id="tbl_thead">
      				<tr>
      					<td><input type="checkbox" name="selected_all"></td>
      					<td class="songlst"><input type="button" value="삭제"></td>
      				</tr>
      			</thead>
      			<tbody id="tbl_tbody" style="overflow-y:auto;">
      				<tr>
      					<%-- <td><input type="checkbox" name="_selected_" id="music" value="${musicdata.title}"/></td>
      					<td>ㄴㄻㅇㄹㅈㄷㄹ</td> --%>
      				</tr>
      			</tbody>
      		</table>
      	</div>
	</div>
</body>
</html>