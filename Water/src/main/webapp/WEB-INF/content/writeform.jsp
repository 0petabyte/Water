<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>	
		<script type="text/javascript">
			$(function(){
				$("#btnadd").click(function(){
					var s="<input type='file' class='form-control' style='width:300px;' name='imgfile'>";
					$("#imgarea").append(s);
				});
			});
		</script>	
	</head> 
	<body>
	<br><br>
		<form action="write.do" method="post" enctype="multipart/form-data"
		    class="form-inline">
			<table class="table table-hover" style="width:400px; margin: 0 auto;">
				<tr>
					<th style="width: 100px;">작성자</th>
					<td style="width: 200px;">
						<input type="text" name="ewriter" class="form-control"
						  required="required">						
					</td>
				</tr>
				<tr>
					<th style="width: 100px;">제목</th>
					<td style="width: 200px;">
						<input type="text" name="etitle" class="form-control"
						   required="required">						
					</td>
				</tr>
				<tr>					
					<td style="width: 200px;" colspan="2">
						<textarea style="width:350px; height: 150px;" 
						name="econtent" class="form-control" required="required"></textarea>					
					</td>
				</tr>
				<tr>
					<th style="width: 100px;">사진업로드</th>
					<td style="width: 200px;">
						<input type="button" id="btnadd" value="사진추가">
						<div id="imgarea"></div>											
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="게시글저장" class="form-control" style="background-color: #a2f5f2">
					</td>
				</tr>
			</table>    
		</form>
	</body>
</html>








