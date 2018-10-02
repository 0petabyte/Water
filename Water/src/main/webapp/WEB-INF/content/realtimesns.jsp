<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
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
		        try {
		            var id = /-(\d+)$/.exec(id_selector)[1];
		            console.log(id_selector, id);
		            jQuery('#myCarousel').carousel(parseInt(id));
		        } catch (e) {
		            console.log('Regex failed!', e);
		        }
		    });
		        // When the carousel slides, auto update the text
		        $('#myCarousel').on('slid.bs.carousel', function (e) {
		        	$('.frame', parent.document).get(0).contentDocument.location.reload();
		                 var id = $('.item.active').data('slide-number');
		                $('#carousel-text').html($('#slide-content-'+id).html());
		        });
		});
		</script>
	</head> 
	<body>
	<h2>실시간 반응</h2>
	<!-- <div style="margin: auto 0; display:none;" id="div1">
		<iframe src="http://localhost:8080/Water/test1122.htm" class="frame" id="frame1" ></iframe>
	</div>
	<button id="no1">1위</button> -->
	<div class="container">
    <div id="main_area">
        <!-- Slider -->
        <div class="row">
            <div class="col-sm-6" id="slider-thumbs">
                <!-- Bottom switcher of slider -->
                <ul class="hide-bullets">
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-0">1위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-1">2위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-2">3위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-3">4위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-4">5위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-5">6위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-6">7위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-7">8위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-8">9위</a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-9">10위</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-6">
                <div class="col-xs-12" id="slider">
                    <!-- Top part of the slider -->
                    <div class="row">
                        <div class="col-sm-12" id="carousel-bounding-box">
                            <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <div class="active item" data-slide-number="0">
                                        <iframe src="http://localhost:8080/Water/myword1.html" class="frame" id="frame2" ></iframe></div>

                                    <div class="item" data-slide-number="1">
                                        <iframe src="https://www.youtube.com/embed/wEQpfil0IYA" ></iframe></div>

                                    <div class="item" data-slide-number="2">
                                        <iframe src="http://localhost:8080/Water/test1122.htm" class="frame" id="frame1" ></iframe></div>

                                    <div class="item" data-slide-number="3">
                                        <iframe src="http://localhost:8080/Water/test1122.htm" class="frame" id="frame1" ></iframe></div>

                                    <div class="item" data-slide-number="4">
                                        <img src="http://placehold.it/470x480&text=4"></div>

                                    <div class="item" data-slide-number="5">
                                        <img src="http://placehold.it/470x480&text=5"></div>
                                    
                                    <div class="item" data-slide-number="6">
                                        <img src="http://placehold.it/470x480&text=6"></div>
                                    
                                    <div class="item" data-slide-number="7">
                                        <img src="http://placehold.it/470x480&text=7"></div>
                                    
                                    <div class="item" data-slide-number="8">
                                        <img src="http://placehold.it/470x480&text=8"></div>
                                    
                                    <div class="item" data-slide-number="9">
                                        <img src="http://placehold.it/470x480&text=9"></div>
                                    
                                </div>
                                <!-- Carousel nav -->
                                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/Slider-->
        </div>

    </div>
</div>
	</body>
</html>
