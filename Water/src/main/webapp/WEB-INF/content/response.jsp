<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
	<meta charset="utf-8">
	<title>Time Music</title>
	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Jua" rel="stylesheet">
	<style>
	.frame { 
		border:none;
		border-radius: 50%;
		width: 500px;
		height: 300px;
	}
	
	h2 { 
		font-family: 'Jua', sans-serif;
		font-size: 40pt;
	}
	.container {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  width: 60vw;
  margin: 0 auto;
}
.btn {
  flex: 1 1 auto;
  margin: 10px;
  padding:10px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
 /* text-shadow: 0px 0px 10px rgba(0,0,0,0.2);*/
  box-shadow: 0 0 20px #eee;
  border-radius: 10px;
  width: 10px;
 }

/* Demo Stuff End -> */

/* <- Magic Stuff Start */

.btn:hover {
  background-position: right center; /* change the direction of the change here */
}

.btn-1 {
  background-image: linear-gradient(to right, #f6d365 0%, #fda085 51%, #f6d365 100%);
}

.btn-2 {
  background-image: linear-gradient(to right, #fbc2eb 0%, #a6c1ee 51%, #fbc2eb 100%);
}

.btn-3 {
  background-image: linear-gradient(to right, #84fab0 0%, #8fd3f4 51%, #84fab0 100%);
}

.btn-4 {
  background-image: linear-gradient(to right, #a1c4fd 0%, #c2e9fb 51%, #a1c4fd 100%);
}

.btn-5 {
  background-image: linear-gradient(to right, #ffecd2 0%, #fcb69f 51%, #ffecd2 100%);
}

	</style>
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<script>
	function reloadFrame(iframe, src) {
		iframe.src = src;
	}
	</script>
</head>
<body>
	<br>
	<h2>실시간 반응</h2>
	<br>
    <iframe src="${root}/myword1.html" class="frame" id="myFrame" ></iframe>
    <br><br><br><br>
    <%-- <ul class="nav nav-pills nav-justified">
    	<li><input type="button" value="1위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/myword1.html')"></li>
    	<li><input type="button" value="2위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/test1122.htm')"></li>
    	<li><input type="button" value="3위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/3.html')"></li>
    	<li><input type="button" value="4위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/4.html')"></li>
    	<li><input type="button" value="5위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/5.html')"></li>
    	<li><input type="button" value="6위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/6.html')"></li>
    	<li><input type="button" value="7위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/7.html')"></li>
    	<li><input type="button" value="8위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/8.html')"></li>
    	<li><input type="button" value="9위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/9.html')"></li>
    	<li><input type="button" value="10위" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/10.html')"></li>
	</ul> --%>
	<div class="container">
		<a class="btn btn-1" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/myword1.html')">1위</a>
		<a class="btn btn-2" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/test1122.htm')">2위</a>
		<a class="btn btn-3" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/3.html')">3위</a> 
		<a class="btn btn-4" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/4.html')">4위</a> 
		<a class="btn btn-5" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/5.html')">5위</a>
	</div>
	<div class="container">
		<a class="btn btn-1" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/6.html')">6위</a>
		<a class="btn btn-2" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/7.html')">7위</a>
		<a class="btn btn-3" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/8.html')">8위</a> 
		<a class="btn btn-4" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/9.html')">9위</a> 
		<a class="btn btn-5" onclick="reloadFrame(document.getElementById('myFrame'), '${root}/10.html')">10위</a>
	</div>

</body>
</html>
