<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Time Music</title>
		<c:set var="root" value="<%=request.getContextPath()%>" />
		<link rel="stylesheet" type="text/css" href="${root}/css/hallstyle.css">
		<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Stylish|Sunflower:300|Yeon+Sung" rel="stylesheet">
		<link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
		<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css'>
		<script>
		$(document).ready(function() {
			$('.carousel').carousel({
				interval: 6000
			})
		});
		</script>
		<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		 --><style>
		h1 {
		display: table;
		margin: 5% auto 0;
		padding: 0;
		text-transform: uppercase;
		font-family: 'Do Hyeon', sans-serif;
		font-size: 60pt;
		}
		</style>
	</head> 
	<body>
	<br><br><br><br><br>
	<div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="${root}/images/hall/2008top1.jpg"/></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2009top1.jpg" /></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2010top1.jpg" /></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2011top1.jpg" /></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2012top1.jpg" /></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2013top1.jpg" /></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2014top1.jpg" /></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2015top1.jpg" /></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2016top1.jpg" /></div>
            <div class="swiper-slide"><img src="${root}/images/hall/2017top1.jpg" /></div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
    <h1>명예의 전당</h1>
    
    <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.min.js'></script>
    <script>
    var swiper = new Swiper('.swiper-container', {
    	pagination: '.swiper-pagination',
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        spaceBetween: 0,
        //loop: true,
        autoplay: 2500,
        autoplayDisableOnInteraction: false,
        slidesPerView: 4,
        coverflow: {
            rotate: 30,
            stretch: 0,
            depth: 100,
            modifier: 1,
            slideShadows : true
        }
    });
    //# sourceURL=pen.js
    </script>
    
    <br>
    
    <div class="container">
	<div class="col-xs-12">
		<h2>2010년대 1위곡</h2>
		<div class="carousel slide" id="myCarousel1">
			<div class="carousel-inner">
				<div class="item active">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/u2pFB1dCSo4"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/RrvdjyIL0fA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
	                        </div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/TNWMZIf7eSg"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/3K38Fc1SV5c"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide1 -->
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/pok5yDw77uM"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/aiHSVQy9xN8"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/Fm5iP0S1z9w"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide2 -->
			</div>
			<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel1" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel1" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
				</ul>
			</nav><!-- /.control-box -->                
		</div><!-- /#myCarousel -->
		
		<br>
		<h2>2000년대 1위곡</h2>
		<div class="carousel slide" id="myCarousel2">
			<div class="carousel-inner">
				<div class="item active">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/Amq-qlqbjYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">	
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/y5MAgMVwfFs"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/9RUeTYiJCyA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide1 -->
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide2 --> 
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">	
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide3 --> 
			</div>
			<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel2" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel2" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
				</ul>
			</nav><!-- /.control-box -->                
		</div><!-- /#myCarousel -->
		
		<br>
		<h2>1990년대 1위곡</h2>
		<div class="carousel slide" id="myCarousel3">
			<div class="carousel-inner">
				<div class="item active">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
	                        </div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide1 -->
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide2 --> 
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">	
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide3 --> 
			</div>
			<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel3" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel3" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
				</ul>
			</nav><!-- /.control-box -->                
		</div><!-- /#myCarousel -->
		
		<br>
		<h2>1980년대 1위곡</h2>
		<div class="carousel slide" id="myCarousel4">
			<div class="carousel-inner">
				<div class="item active">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
	                        </div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide1 -->
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide2 --> 
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">	
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide3 --> 
			</div>
			<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel4" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel4" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
				</ul>
			</nav><!-- /.control-box -->                
		</div><!-- /#myCarousel -->
		
		<br>
		<h2>1970년대 1위곡</h2>
		<div class="carousel slide" id="myCarousel5">
			<div class="carousel-inner">
				<div class="item active">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
	                        </div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide1 -->
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide2 --> 
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">	
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide3 --> 
			</div>
			<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel5" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel5" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
				</ul>
			</nav><!-- /.control-box -->                
		</div><!-- /#myCarousel -->
		
		<br>
		<h2>1960년대 1위곡</h2>
		<div class="carousel slide" id="myCarousel6">
			<div class="carousel-inner">
				<div class="item active">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
	                        </div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide1 -->
				<div class="item">
					<ul class="thumbnails">
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
						<li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail"><iframe width='230' src="https://www.youtube.com/embed/wEQpfil0IYA"></iframe></div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /Slide2 -->
			</div>
			<nav>
				<ul class="control-box pager">
					<li><a data-slide="prev" href="#myCarousel6" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
					<li><a data-slide="next" href="#myCarousel6" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
				</ul>
			</nav><!-- /.control-box -->                
		</div><!-- /#myCarousel -->
		
	</div><!-- /.col-xs-12 -->
</div><!-- /.container -->
    
    
    <!-- 테스트 -->
    		<c:forEach var="musicdata_rank1list" items="${list}" varStatus="i">
    		<h5>${i.count}가수: ${musicdata_rank1list.artlist}제목:  ${musicdata_rank1list.title} 년도: ${musicdata_rank1list.sunwhiyear }
    		</h5></c:forEach>
</html>
