<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>
<head>
   <title>Barker Music</title>
   <meta charset="utf-8">
   <script type="text/javascript">
   	/* $(function(){
   		$("tr.chucheoneu").click(function(){
   			//alert("aaa");
   			if($(this).parent().next().css("display")=="none"){
   				$(this).parent().next().css("display","");
   			}else{
   				$(this).parent().next().css("display","none");
   			}
   		});
   	}); */
   	
   	$(function(){
   		$("tr.chucheoneu").click(function(){
   			//alert("aaa");
   			if($(this).next().css("display")=="none"){
   				$(this).next().css("display","");
   			}else{
   				$(this).next().css("display","none");
   			}
   		});
   	});
   	
   </script>
</head>
<body>

<div class="container">
   <h2></h2>
   <p></p>
   
    	<b>총<span style="color: red;">${count}</span>개 가 있습니다</b>

   
   <table class="table table-hover">
      <thead>
         <tr>
            <th style="text-align: center;">No</th>
            <th style="text-align: center;">추천이유</th>
            <th style="text-align: center;">가수명</th>
            <th style="text-align: center;">타이틀</th>
         </tr>
      </thead>
       <tbody>
          <c:forEach var="chucheonbbs" items="${clist}" varStatus="i">
          <tr class="chucheoneu" style="cursor: pointer;">
             <td align="center">${i.count}</td>
             <td align="center">${chucheonbbs.chucheoneu}</td>
             <td align="center">${chucheonbbs.artlist}</td>
             <td align="center">${chucheonbbs.title}</td>          
          </tr>
          <c:set var="str1" value="${chucheonbbs.yourll}"></c:set>
          <c:set var="splitStr" value="${fn:split(str1,',')}"></c:set>
                  
          <tr style="display: none;" id="scontentsub" class="subshow" >
          	<td colspan="4" align="center">
          	<c:forEach var="str" items="${splitStr}">          	       	
        	<div><iframe width="350" height="180" src="https://www.youtube.com/embed/${str}" frameborder="0" allowfullscreen></iframe>         	
          	</div>
          	         	  	  	
          	</c:forEach>
          	${chucheonbbs.ccontent}
          	</td>
          </tr>           
          </c:forEach>
       </tbody>
    </table>
    
   
</div>
</body>
</html>
