<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <c:set var="root" value="<%=request.getContextPath()%>" />
        <title>실시간 차트</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">


        <link rel="stylesheet" href="assets/css/iconfont.css">
        <link rel="stylesheet" href="assets/css/slick/slick.css">
        <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
        <link rel="stylesheet" href="assets/css/stylesheet.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/jquery.fancybox.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">


        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
        

        
        
    </head>
    
    
    
    <body data-spy="scroll" data-target=".navbar-collapse">


		<table class="table table-hover">
<!-- 		<thead>
			<tr>
				<td><input type="checkbox" name="_selected_all_"></td>
				<th style="text-align: center;">No</th>
				<th style="text-align: center;">Title</th>
				<th style="text-align: center;">Singer</th>
				<th style="text-align: center;">Genre</th>
				<th style="text-align: center;">Ranking</th>
				<th style="text-align: center;">Album</th>
			</tr>
		</thead> -->
    	<tbody>
    		<c:forEach var="musicdata_realtime" items="${list}" >
<%--     		<tr>
    			<td><input type="checkbox" name="_selected_" id="music" 
    			  value="${musicdata_realtime.title}" val1="${musicdata_realtime.title}" val2="${musicdata_realtime.artlist}" val3="${musicdata_realtime.tubeurl}"/></td>
				<td align="center">${no}</td>	
				<c:set var="no" value="${no-1}"/>
				<td align="center">
				<a href="https://www.youtube.com/watch?v=${musicdata_realtime.tubeurl}">${musicdata_realtime.title}</a>
				<br>
				<br>
				<iframe width="280" height="157" src="https://www.youtube.com/embed/${musicdata_realtime.tubeurl}" frameborder="0" allowfullscreen></iframe>
				</td>		
    			<td align="center">${musicdata_realtime.artlist}</td>
    			<td align="center">${musicdata_realtime.jangre}</td>
       			<td align="center">${musicdata_realtime.sunwhi}</td>    			
    			<td align="center"><a href="${musicdata_realtime.tubeurl}" > ${musicdata_realtime.album}</a></td>
    		</tr> --%>




 <!--            home Section
            <section id="home" class="home">
                <div class="overlay">
                    <div class="home_skew_border">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <div class="main_home_slider text-center">
                                        <div class="single_home_slider">
                                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                                <h3>Our Clients Are Our First Priority</h3>
                                                <h1>WELCOME TO BINO</h1>
                                                <div class="separator"></div>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's 
                                                    standard dummy text ever since the 1500s, when an unknown printer took a galley 
                                                    of type and scrambled it to make a type specimen book.</p>
                                                <div class="home_btn">
                                                    <a href="" class="btn btn-lg m_t_10">GET STARTED NOW</a>
                                                    <a href="" class="btn btn-default">LEARN MORE</a>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="single_home_slider">
                                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                                <h3>Our Clients Are Our First Priority</h3>
                                                <h1>WELCOME TO BINO</h1>
                                                <div class="separator"></div>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's 
                                                    standard dummy text ever since the 1500s, when an unknown printer took a galley 
                                                    of type and scrambled it to make a type specimen book.</p>
                                                <div class="home_btn">
                                                    <a href="" class="btn btn-lg m_t_10">GET STARTED NOW</a>
                                                    <a href="" class="btn btn-default">LEARN MORE</a>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="single_home_slider">
                                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                                <h3>Our Clients Are Our First Priority</h3>
                                                <h1>WELCOME TO BINO</h1>
                                                <div class="separator"></div>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's 
                                                    standard dummy text ever since the 1500s, when an unknown printer took a galley 
                                                    of type and scrambled it to make a type specimen book.</p>
                                                <div class="home_btn">
                                                    <a href="" class="btn btn-lg m_t_10">GET STARTED NOW</a>
                                                    <a href="" class="btn btn-default">LEARN MORE</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="scrooldown">
                            <a href="#feature"><i class="fa fa-arrow-down"></i></a>
                        </div>
                    </div>
                </div>
            </section>End of home section


            feature section
            <section id="feature" class="feature sections">
                <div class="container">
                    <div class="row">
                        <div class="main_feature text-center">

                            <div class="col-sm-3">
                                <div class="single_feature">
                                    <div class="single_feature_icon">
                                        <i class="fa fa-clone"></i>
                                    </div>

                                    <h4>SLEEK DESIGN</h4>
                                    <div class="separator3"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting let. 
                                        Lorem Ipsum has been the industry.</p>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="single_feature">
                                    <div class="single_feature_icon">
                                        <i class="fa fa-heart-o"></i>
                                    </div>

                                    <h4>CLEAN CODE</h4>
                                    <div class="separator3"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting let. 
                                        Lorem Ipsum has been the industry.</p>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="single_feature">
                                    <div class="single_feature_icon">
                                        <i class="fa fa-lightbulb-o"></i>
                                    </div>
                                    <h4>CREATIVE IDEAS</h4>
                                    <div class="separator3"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting let. 
                                        Lorem Ipsum has been the industry.</p>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="single_feature">
                                    <div class="single_feature_icon">
                                        <i class="fa fa-comments-o"></i>
                                    </div>

                                    <h4>FREE SUPPORT</h4>
                                    <div class="separator3"></div>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting let. 
                                        Lorem Ipsum has been the industry.</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>End of container
            </section>End of feature Section
            <hr /> -->


            <!-- History section -->
            <section id="history" class="history sections">
                <div class="container">
                    <div class="row">
                        <div class="main_history">
                            <div class="col-sm-6">
                                <div class="single_history_img">
                                    <iframe width="500" height="340" src="https://www.youtube.com/embed/${musicdata_realtime.yourll}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="single_history_content">
                                    <div class="head_title">
                                        <h2>${musicdata_realtime.sunwhi} 위 ${musicdata_realtime.artlist}</h2>
                                    </div>
                                    <p>타이틀 : ${musicdata_realtime.title}<br>
                                    앨범명: ${musicdata_realtime.album}<br>
                                    장르 :  ${musicdata_realtime.jangre}</p>

                                    <a href="" class="btn btn-lg">가사보기</a>
                                </div>
                            </div>
                        </div>
                    </div><!--End of row -->
                </div><!--End of container -->
            </section><!--End of history -->
            
            
                        <!-- Counter Section --> 
            <section id="counter" class="counter">
                <div class="video_overlay">
                    <div class="container">
                        <div class="row">  
                            <div class="col-sm-12">               
                                <div class="main_counter_area text-center">

                                    <div class="row">
                                        <div class="single_counter border_right">
                                            <div class="col-sm-3 col-xs-12">
                                                <div class="single_counter_item">
                                                    <i class="icon icon-thumbs-up"></i>
                                                    <h2 class="statistic-counter">${musicdata_realtime.musicid}</h2>
                                                    <h4 class="">좋아요</h4>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="single_counter">
                                            <div class="col-sm-3 col-xs-12">
                                                <div class="single_counter_item">
                                                    <i class="icon icon-business-3"></i>
                                                    <h2 class="statistic-counter">281</h2>
                                                    <h4 class="">유투부 VIEWS</h4>  
                                                </div>
                                            </div>
                                        </div> 

                                        <div class="single_counter">
                                            <div class="col-sm-3 col-xs-12">
                                                <div class="single_counter_item">
                                                    <i class="icon icon-people-32"></i>
                                                    <h2 class="statistic-counter">5</h2>
                                                    <h4 class="">시대의 명곡</h4>  
                                                </div>

                                            </div>
                                        </div>

                                        <div class="single_counter">
                                            <div class="col-sm-3 col-xs-12">
                                                <div class="single_counter_item">
                                                    <i class="icon icon-cup"></i>
                                                    <h2 class="statistic-counter">178</h2>
                                                    <h4 class="">앨범 발매량</h4>

                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End off container --> 
            </section>   <!-- End of counter section -->
            
            
                        <hr />


    		</c:forEach>
    	</tbody>
    </table>








  

        <!-- START SCROLL TO TOP  -->

        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div>

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery.magnific-popup.js"></script>
        <script src="assets/js/jquery.mixitup.min.js"></script>
        <script src="assets/js/jquery.easing.1.3.js"></script>
        <script src="assets/js/jquery.masonry.min.js"></script>

        <!--slick slide js -->
        <script src="assets/css/slick/slick.js"></script>
        <script src="assets/css/slick/slick.min.js"></script>


        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>
