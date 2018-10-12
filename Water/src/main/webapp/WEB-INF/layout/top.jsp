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
			if ("<%=session.getAttribute("loginok")%>"!="yes") {
				alert("로그인 후 이용하실 수 있습니다");
			} else {
				var selnum=document.getElementsByName("_selected_");
				//alert(selnum.length);
				var cnt=0;
				
				var t="";
				var a="";
				var y="";
				for(i=0;i<selnum.length;i++){
					if (selnum[i].checked){
						cnt++;
						var title=$(selnum[i]).attr('val1');
						var artist=$(selnum[i]).attr('val2');
						var youurl=$(selnum[i]).attr('val3');
						t+=title+",";
						a+=artist+",";
						y+=youurl+",";
					/* var str1="<tr><td><input type='checkbox' name='selected'/></td><td class='songlst'>"+artist
							+" - "+title+"<br><iframe width='100' height='56' src='https://www.youtube.com/embed/"
							+youurl+"' frameborder='0' allowfullscreen></iframe></td></tr>";
						$("#tbl_tbody").append(str1); */
					}
					
				}
				t=t.substring(0,t.length-1);
				a=a.substring(0,a.length-1);
				y=y.substring(0,y.length-1);
				
				if(cnt==0){
					alert("선택된 노래가 없습니다.");
				}else {
					alert("재생목록에 "+cnt+" 곡이 추가되었습니다.");
				}
				
				var userid="${sessionScope.user_name}";
				window.location.href="addlist.do?title="+t+"&artist="+a+"&youurl="+y+"&userid="+userid;
			}
			
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
	<a href="${root}/main.do"><img src="${root}/images/logo2.png" id="logo"></a>
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
				<li class="menulist"><a href="${root}/response.do" style="color:#52616a;">실시간차트반응</a></li>
				<li class="menulist"><a href="${root}/chucheon.do" style="color:#52616a;">추천노래</a></li>
				<li class="menulist"><a href="${root}/writeform.do" style="color:#52616a;">오류신고</a></li>
				<li class="menulist"><a href="${root}/question.do" style="color:#52616a;">질문</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<c:if test="${sessionScope.loginok=='yes'}">
					<li class="menulist"><a href="${root}/logout.do" style="color: #52616a;">${sessionScope.user_name}님 어서오세욧</a></li>					
				</c:if>
				<c:if test="${sessionScope.loginok=='yes'}">
				<li class="menulist"><a href="#" id="playlist" style="color: #52616a;">PlayList</a></li>
				</c:if>
				<c:if test="${sessionScope.loginok=='yes'}">
					<li class="menulist"><a href="${root}/logout.do" style="color: #52616a;"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</c:if>
				
				<c:if test="${sessionScope.loginok==null}">
					<li class="menulist"><a href="${root}/join.do" style="color: #52616a;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>
	<div id="mylist" style="display: none; position: absolute; ">
		<p><b>${sessionScope.user_name}님 재생목록</b></p>
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