<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>
<head>
   <title>Barker Music</title>
   <meta charset="utf-8">
   <c:set var="root" value="<%=request.getContextPath()%>" />
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
           
         </tr>
      </thead>
       <tbody>
          <c:forEach var="chucheonbbs" items="${clist}" varStatus="i" begin="${startNum}" end="${endNum}">
          <tr class="chucheoneu" style="cursor: pointer;">
             <td align="center">${i.count}</td>
             
             <td align="center">${chucheonbbs.chucheoneu}<span style="color: red;">(${chucheonbbs.acnt})</span></td>
                     
          </tr>
          <c:set var="str1" value="${chucheonbbs.yourll}"></c:set>
          <c:set var="splitStr" value="${fn:split(str1,',')}"></c:set>
          <c:set var="str2" value="${chucheonbbs.artlist}"></c:set>
          <c:set var="splitStr2" value="${fn:split(str2,',')}"></c:set>
          <c:set var="str3" value="${chucheonbbs.title}"></c:set>
          <c:set var="splitStr3" value="${fn:split(str3,',')}"></c:set>
                  
          <tr style="display: none;" id="scontentsub" class="subshow" >
          	<td colspan="2" align="center">
          	<div style="width: 370px"></div>          	
          	<c:forEach var="str" items="${splitStr}">         	       	
        	<div>
        	<iframe width="350" height="180" src="https://www.youtube.com/embed/${str}" frameborder="0" allowfullscreen></iframe>         	
          	</div>          	       	         	  	  	
          	</c:forEach>
          	
          	<div style="width: 370px; font-size: 15pt;">${chucheonbbs.ccontent}</div>
          
          	<form action="reple.do" method="post">         	
          	<input type="hidden" name="dat_num" value="${chucheonbbs._id}">
          	
          	<div style="width: 370px">
          	<c:if test="${sessionScope.loginok=='yes'}">
          	<input type="text" name="dat_name" value="${sessionScope.user_name}" required="required" style="width: 90px" placeholder="작성자">
          	</c:if>
          	<c:if test="${sessionScope.loginok==null}">
          	<input type="text" name="dat_name" required="required" style="width: 80px" placeholder="작성자">
          	</c:if>		
          	<input type="text" name="dat_content" required="required" style="width: 250px" placeholder="댓글을 입력하세요">
          	<input type="submit" value="댓글달기" class="btn btn-sm btn-warning">
          	</div>
          	</form>
          	<c:forEach var="reple" items="${datlist}" varStatus="i">
          		<div style="width: 370px; padding-left: 40px; text-align: left; background-color: #EAEAEA;">          			
				<c:if test="${chucheonbbs._id==reple.dat_num}">				
				${reple.dat_name} : ${reple.dat_content}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<c:if test="${sessionScope.user_name==reple.dat_name}">
				<a href="${root}/chudelete.do?_id=${reple._id}">댓글 삭제</a>				
				</c:if>
				</c:if>
																      		
         		</div>
          	</c:forEach>
          	</td>
          </tr>           
          </c:forEach>
       </tbody>
    </table>
    
    <!-- 페이징 -->   
	    <table style="margin: 0 auto;">
	   	<tr>
	   		<td align="center">
	   			<ul class="pagination">
	   			<c:if test="${startPage>1}">
	   				 <li><a href="chucheonlist.do?pageNum=${startPage-1}">이전</a></li>   				 
	   			</c:if>
	   			<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	   				<c:if test="${currentPage==pg}">
	   					<li><a href="chucheonlist.do?pageNum=${pg}" style="color:red;">${pg}</a></li>
	   				</c:if>
	   				<c:if test="${currentPage!=pg}">
	   					<li><a href="chucheonlist.do?pageNum=${pg}" style="color:black;">${pg}</a></li>
	   				</c:if>
	   			</c:forEach>
	   			<c:if test="${endPage<totalPage}">
	   				<li><a href="chucheonlist.do?pageNum=${endPage+1}">다음</a></li>   
	   			</c:if>
	   			</ul>
	   		</td>
	   	</tr>
	   </table>
    
   
</div>
</body>
</html>
