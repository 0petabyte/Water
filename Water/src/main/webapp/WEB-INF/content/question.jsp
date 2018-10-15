
<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Agency - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="ques/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="ques/css/agency.min.css" rel="stylesheet">
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
	
	
	<script type="text/javascript">
		$(function(){
			$("#btn").click(function(){
				/* gasu=$("#gasu").val();
				age=$("#age").val();
				jang=$("#jang").val(); */
				
				/* if(gasu.length==0)
					alert("아이디를입력해주세요"); */
				/* var url="${root}/idolNameSearch.do?name="+name;
				window.location.href=url; */
				
			});
		});
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
	
  </head>

  <body id="page-top">

    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">나의곡찾기</h2>
            <h3 class="section-subheading text-muted">--</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">

          
            <form id="contactForm" name="sentMessage" novalidate="novalidate" method="get" action="question.do">
              <div class="row">
                <div class="col">
                 <div class="form-group">
                    <input class="form-control" name ="yearkeyword" id="yearkeyword" type="text" placeholder="태어난 년도를 입력하세요 *" required="required" >
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" name="jangkeyword" id="jangkeyword"type="text" placeholder="장르를 입력하세요** Ballad,Rock,Adult Contemporary,Folk,Dance,Hip-hop,Soul,KoreanMovie,Blues **" required="required">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="btn" class="btn btn-primary btn-xl text-uppercase" type="submit">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

	<!-- Portfolio Grid -->
   <!--  <section class="bg-light" id="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">결과</h2>
            <h3 class="section-subheading text-muted">-</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" >
              
              <img class="img-fluid" src="images/logo.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>가수1</h4>
              <p class="text-muted">노래1</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" >
            
              <img class="img-fluid" src="images/logo.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>가수2</h4>
              <p class="text-muted">노래2</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" >
              
              <img class="img-fluid" src="images/logo.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>가수3</h4>
              <p class="text-muted">노래3</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" >
             
              <img class="img-fluid" src="images/logo.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>가수4</h4>
              <p class="text-muted">노래4</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" >
             
              <img class="img-fluid" src="images/logo.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>가수5</h4>
              <p class="text-muted">노래5</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" >
              
              <img class="img-fluid" src="images/logo.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>가수6</h4>
              <p class="text-muted">노래6</p>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <table class="table table-hover">
			<thead>
				<tr>
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
						<td class="timelist" align="center">${no}</td>
						<c:set var="no" value="${no-1}" />
						<td class="timelist" align="center">${musicdata.title}</a>
						</td>
						<td class="timelist" align="center">${musicdata.artlist}</td>
						<td class="timelist" align="center">${musicdata.jangre}</td>
						<td class="timelist" align="center">${musicdata.sunwhiyear.substring(0,4)}년${musicdata.sunwhi}위</td>
						<td class="timelist" align="center">${musicdata.album}</td>
					</tr>
					<tr style="display: none;" id="scontentsub" class="subshow">
						<td colspan="4" align="center"><iframe width="280"
								height="157"
								src="https://www.youtube.com/embed/${musicdata.yourll}"
								frameborder="0" allowfullscreen></iframe></td>

						<td height="100" val colspan="5" align="center"><div
								style="overflow-y: scroll; height: 100%; width: 100%">
								<br>저작권 문제로 가사 지원을 중단합니다.<br>
						해당 가사에 저작권이 있는 음원 사이트 Melon을 링크합니다.<br>
						<br>
						<a href="https://www.melon.com/song/detail.htm?songId=${musicdata.musicid}" target="_blank">Melon 에서 가사보기</a>
						<br>
						<br>
						<a href="https://www.youtube.com/watch?v=${musicdata.yourll}" target="_blank">해당영상 YOUTUBE 로 가기</a></div></td>
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
							<li><a href="question.do?${nowurl}&pageNum=${startPage-1}">Previous</a></li>
						</c:if>
						<c:forEach var="pg" begin="${startPage}" end="${endPage}">
							<c:if test="${currentPage==pg}">
								<li><a href="question.do?${nowurl}&pageNum=${pg}"
									style="color: red;">${pg}</a></li>
							</c:if>
							<c:if test="${currentPage!=pg}">
								<li><a href="question.do?${nowurl}&pageNum=${pg}"
									style="color: black;">${pg}</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${endPage<totalPage}">
							<li><a href="question.do?${nowurl}&pageNum=${endPage+1}">Next</a></li>
						</c:if>
					</ul>
				</td>
			</tr>
		</table>
	

  </body>

</html>
