<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
   <head>
      <meta charset="utf-8">
      <title>Welcome</title>
      <!-- <script type="text/javascript">
      /*재생리스트*/
  	$(function(){
  		$("#listicon").click(function(){
  			var selnum=document.getElementsByName("_selected_");
  			alert(selnum.length);
  			var cnt=0;
 
  			for(i=0;i<selnum.length;i++){
  				if (selnum[i].checked){
  					cnt++;
  					title=$(selnum[i]).attr('val1');
  					artist=$(selnum[i]).attr('val2');
  					youurl=$(selnum[i]).attr('val3');
  					musicid=$(selnum[i]).attr('val4');
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
      </script> -->
   </head> 
   <body>
   
   ${_selected_}
   
   	
      <%-- <form action="chucheon.do" method="post">
         <table class="table table-bordered" style="width: 300px; margin: 0 auto;">
         <caption>추천하기</caption>
            <tr>
               <input type="hidden" name="musicid"  value="${dto.musicid}">
               <input type="hidden" name="yourll"  value="${dto.yourll}">              
            </tr>
            
            <tr>
               <th style="width:100px;">곡명</th>
               <td>                  
                  <input type="text" name="title" required="required" value="${dto.title}">
               </td>
            </tr>
            <tr>
               <th style="width:100px;">가수명</th>
               <td>
                  <input type="text" name="artlist" required="required" value="${dto.artlist}">
               </td>
            </tr>
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
                  <input type="submit" value="mongodb추천완료" class="btn btn-sm btn-warning">
                  <input type="button" value="목록으로" class="btn btn-sm btn-success" onclick="location.href='main.do'">
               </td>
            </tr>
         </table>
      </form> --%>
   </body>
</html>