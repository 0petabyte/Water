<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>	
		<script type="text/javascript">
			
		</script>	
	</head> 
	<body>
	<br><br>
		<form action="update.do" method="post" enctype="multipart/form-data"
		    class="form-inline">
		    <input type="hidden" name="e_num" value="${dto.e_num}">
			<table class="table table-hover" style="width:400px; margin: 0 auto;">
				<tr>
					<th style="width: 100px;">작성자</th>
					<td style="width: 200px;">
						${dto.ewriter}				
					</td>
				</tr>
				<tr>
					<th style="width: 100px;">제목</th>
					<td style="width: 200px;">
						<input type="text" name="etitle" class="form-control"
						   required="required" value="${dto.etitle}">						
					</td>
				</tr>
				<tr>					
					<td style="width: 200px;" colspan="2">
						<textarea style="width:350px; height: 150px;" 
						name="econtent" class="form-control" required="required">${dto.econtent}</textarea>					
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="수정글저장" class="form-control" style="background-color: #a2f5f2">
					</td>
				</tr>
			</table>    
		</form>
	</body>
</html>








