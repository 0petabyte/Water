<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Time Music</title>
		<c:set var="root" value="<%=request.getContextPath()%>" />
		<link rel="stylesheet" type="text/css" href="${root}/css/test.css">
		<script>
		$(document).ready(function() {
			$('.carousel').carousel({
				interval: 6000
			})
		});
		</script>
		<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 --></head>
<body>
<h1>ddddd</h1>
<!------ Include the above in your HEAD tag ---------->
<div class="container">
<div class="col-xs-12">
	<div class="carousel slide" id="myCarousel">
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
				<li><a data-slide="prev" href="#myCarousel" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
				<li><a data-slide="next" href="#myCarousel" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
			</ul>
		</nav><!-- /.control-box -->                
	</div><!-- /#myCarousel -->
	</div><!-- /.col-xs-12 -->
</div><!-- /.container -->

<h1>ddddd</h1>
<div class="container">
<div class="col-xs-12">
	<div class="carousel slide" id="myCarousel1">
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
				<li><a data-slide="prev" href="#myCarousel1" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
				<li><a data-slide="next" href="#myCarousel1" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
			</ul>
		</nav><!-- /.control-box -->                
	</div><!-- /#myCarousel -->
	</div><!-- /.col-xs-12 -->
</div><!-- /.container -->
	</body>
</html>
