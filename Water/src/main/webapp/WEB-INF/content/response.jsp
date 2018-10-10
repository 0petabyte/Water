<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Time Music</title>
		<style>
			.frame { 
				border:none;
				border-radius: 50%;
				width: 500px;
				height: 300px;
			}
			.hide-bullets {
    list-style:none;
    margin-left: -40px;
    margin-top:20px;
}

.thumbnail {
    padding: 0;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
    width: 100%;
}

.carousel-control { background: none !important;
          filter: none !important; progid:none !important;
}

		</style>
		<script>
		$(function(){
			$("#no1").click(function(){
				$("#div1").slideToggle('fast');
				
				$('#frame1', parent.document).get(0).contentDocument.location.reload();
			});
		});
		  jQuery(document).ready(function($) {
			  
		        $('#myCarousel').carousel({
		                interval: 5000
		        });
		        //Handles the carousel thumbnails
		        $('[id^=carousel-selector-]').click(function () {
		        	$('.frame', parent.document).get(0).contentDocument.location.reload();
			        var id_selector = $(this).attr("id");
			        alert(id_selector);
			        
			        try {
			            var id = /-(\d+)$/.exec(id_selector)[1];
			            console.log(id_selector, id);
			            jQuery('#myCarousel').carousel(parseInt(id));
			            alert($('#img1').attr('src').toString());
			        } catch (e) {
			            console.log('Regex failed!', e);
			        }
			    });
		        // When the carousel slides, auto update the text
		        /* $('#myCarousel').on('slid.bs.carousel', function (e) {
		        	$('.frame', parent.document).get(0).contentDocument.location.reload();
		                 var id = $('.item.active').data('slide-number');
		                $('#carousel-text').html($('#slide-content-'+id).html());
		        }); */
		});
		</script>
		<c:set var="root" value="<%=request.getContextPath()%>" />
	</head> 
	<body>
	<h2>실시간 반응</h2>
	<div class="container">
	<div class="row">
		<h2>Slider with buttons - Stills needs work</h2>
	</div>
</div>

<div class="editor-indent" style="margin-left: 60px; padding: 0 0 0 40px; margin-right: 120px">
<div class="container-fluid">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item">
          <img src="http://placehold.it/1200x440/cccccc/ffffff">
           <div class="carousel-caption">
            <h3>Headline</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
          </div>
        </div><!-- End Item -->
 
         <div class="item">
          <img src="http://placehold.it/1200x440/999999/cccccc">
           <div class="carousel-caption">
            <h3>Headline</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="http://placehold.it/1200x440/dddddd/333333">
           <div class="carousel-caption">
            <h3>Headline</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
          </div>
        </div><!-- End Item -->
        
        <div class="item active">
          <img src="http://placehold.it/1200x440/999999/cccccc">
           <div class="carousel-caption">
            <h3>Headline</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
          </div>
        </div><!-- End Item -->
                
      </div><!-- End Carousel Inner -->
 
 
		<ul class="nav nav-pills nav-justified">
          <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#"><button type="button" class="list-group-item">About</button></a></li>
          <li data-target="#myCarousel" data-slide-to="1"><a href="#"><button type="button" class="list-group-item">Projects</button></a></li>
          <li data-target="#myCarousel" data-slide-to="2"><a href="#"><button type="button" class="list-group-item">Portfolio</button></a></li>
          <li data-target="#myCarousel" data-slide-to="3"><a href="#"><button type="button" class="list-group-item">SERVICES</button></a></li>
        </ul>
 
 
    </div><!-- End Carousel -->
</div></div>
	</body>
</html>
