<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
   <head>
      <meta charset="utf-8">
      <title>Welcome</title>
   </head> 
   <body>
   	
      <form action="chucheon.do" method="post">
         <table class="table table-bordered" style="width: 410px; margin: 0 auto;">
         <caption>추천하기</caption>
         <c:forEach var="dtos" items="${dtos}">
            <tr>
               <input type="hidden" name="musicid"  value="${dtos.musicid}">
               <input type="hidden" name="yourll"  value="${dtos.yourll}">                         
            </tr>
            
            <tr>
               <th style="width:100px;">곡명</th>
               <td>                  
                  <input type="text" name="title" required="required" value="${dtos.title}">
               </td>
            </tr>
            <tr>
               <th style="width:100px;">가수명</th>
               <td>
                  <input type="text" name="artlist" required="required" value="${dtos.artlist}">
               </td>
            </tr>
            </c:forEach>
            <tr>
               <th style="width:400px;">추천이유</th>
               <td>
                  <input type="text" required="required" name="chucheoneu">
               </td>
            </tr>
            <tr>
               <th style="width:400px;">상세추천이유</th>
               <td>
                  <input type="text" name="ccontent">                
               </td>
            </tr>
            
            <tr>
               <td colspan="2" align="center">
                  <input type="submit" value="추천완료" class="btn btn-sm btn-warning">
                  <input type="button" value="목록으로" class="btn btn-sm btn-success" onclick="location.href='main.do'">
               </td>
            </tr>
         </table>
      </form>
   </body>
</html>