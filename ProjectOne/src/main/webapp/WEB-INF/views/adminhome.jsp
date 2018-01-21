 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<%@ include file='header.jsp' %>
   <div class="container">
  <h2>Bibilon</h2>  
  </nav>
     <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner"  >
      <div class="item active">
        <img class="img-responsive center-block" src="resources/Images/Booktt1.png" alt="Book1" style="width:100%;">
      	
      </div>

      <div class="item">
        <img class="img-responsive center-block" src="resources/Images/booktt2.png" alt="Book2" style="width:100%;" >
      </div>
    
      <div class="item">
        <img class="img-responsive center-block" src="resources/Images/booktt3.png" alt="Book4" style="width:100%;">
      </div>
      <div class="item">
        <img class="img-responsive center-block" src="resources/Images/booktt4.png" alt="Book4" style="width:100%;">
      </div>
       <div class="item">
        <img class="img-responsive center-block" src="resources/Images/booktt5.png" alt="Book5" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <br/><br/>
  
  <h3 style="font-size:50px" align="center">Categories</h3>
  <br><br/>
<!--   <div class="row"> -->
   
<!--     <div class="col-md-2"></div> -->
<!--     <div class="col-md-2"> -->
<!--         <img class="img-circle" id="small" src="Images/logo-fb.png" /> -->
<!--     </div> -->
<!--      <div class="col-md-1"> -->
<!--       <h4> Fiction</h4> -->
<!--     </div> -->
<!--     <div class="col-md-2"></div> -->
<!--      <div class="col-md-2"> -->
<!--         <img class="img-circle" id="small" src="Images/nonfic.png" /> -->
<!--     </div> -->
<!--      <div class="col-md-1"> -->
<!--       <h4>Non Fiction</h4> -->
<!--     </div> -->
<!--     <div class="col-md-2"></div> -->
<!--    </div> -->
<!--    <br/><br> -->
<!--    <div class="row"> -->
<!--     <div class="col-md-2"></div> -->
<!--     <div class="col-md-2"> -->
<!--         <img class="img-circle" id="small" src="Images/travel.png" /> -->
<!--     </div> -->
<!--      <div class="col-md-1"> -->
<!--       <h4> Travel</h4> -->
<!--     </div> -->
<!--     <div class="col-md-2"></div> -->
<!--      <div class="col-md-2"> -->
<!--         <img class="img-circle" id="small" src="Images/nonfic.png" /> -->
<!--     </div> -->
<!--      <div class="col-md-1"> -->
<!--       <h4>Non Fiction</h4> -->
<!--     </div> -->
<!--     <div class="col-md-2"></div> -->
<!-- </div> -->
<div class = "row">
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/Images/logo-fb.png"  alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption" >
         <a href = "#" class = "btn btn-primary" role = "button">
              Fiction books
            </a> 
  		
      </div>
   </div>
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/Images/nonfic.png" alt = "Generic placeholder thumbnail">
      </div>
      
   <div class = "caption" >
         <a href = "#" class = "btn btn-primary" role = "button">
              Non-Fiction books
            </a> 
  		
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/Images/travel.png" alt = "Generic placeholder thumbnail">
      </div>
      
    <div class = "caption" >
         <a href = "#" class = "btn btn-primary" role = "button">
              Travel Books
            </a> 
  		
      </div>
   </div>
    <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/Images/kids.png" alt = "Generic placeholder thumbnail">
      </div>
      
   <div class = "caption" >
         <a href = "#" class = "btn btn-primary" role = "button">
              Kids Books
            </a> 
  		
      </div>
   </div>
   
</div>
<br><br/>
<div class = "row">
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "/WEB-INF/resources/Images/science.png"  alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption" >
         <a href = "#" class = "btn btn-primary" role = "button">
             Science & Technology Books
            </a> 
  		
      </div>
   </div>
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/Images/religious.png" alt = "Generic placeholder thumbnail">
      </div>
      
   <div class = "caption" >
         <a href = "#" class = "btn btn-primary" role = "button">
             Religious Books
            </a> 
  		
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/Images/history.png" alt = "Generic placeholder thumbnail">
      </div>
      
    <div class = "caption" >
         <a href = "#" class = "btn btn-primary" role = "button">
            Historical Books
            </a> 
  		
      </div>
   </div>
    <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/Images/Horror.png" alt = "Generic placeholder thumbnail">
      </div>
      
   <div class = "caption" >
         <a href = "#" class = "btn btn-primary" role = "button">
             Horror & Mystery Books
            </a> 
  		
      </div>
   </div>
   
</div>
  </div>
  


<footer class="footer1">
<div class="container">

<div class="row"><!-- row -->
            
                <div class="col-lg-4 col-md-4"><!-- widgets column left -->
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Useful links</h1>
                                
                                <ul>
                                	<li><a  href="#"><i class="fa fa-angle-double-right"></i> About Us</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i> Contact Us</a></li>
                                    
                                </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                
                <div class="col-lg-4 col-md-4"><!-- widgets column left -->
            
                <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_nav_menu"><!-- widgets list -->
                    
                                <h1 class="title-widget">Categories</h1>
                                
                                <ul>
 									<li><a  href="#"><i class="fa fa-angle-double-right"></i>  Fiction Books</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Non-Fiction Books</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Travel Books</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Kids Books</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Science & Technnology Books </a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Literature Books</a></li>
                                    <li><a  href="#"><i class="fa fa-angle-double-right"></i>  Historical Books</a></li>
                                    <li><a  href="#" target="_blank"><i class="fa fa-angle-double-right"></i> Horror & Mystery Books</a></li>
                                    
                                </ul>
                    
							</li>
                            
                        </ul>
                         
                      
                </div><!-- widgets column left end -->
                
                
                
                
                
                <div class="col-lg-3 col-md-3"><!-- widgets column center -->
                
                   
                    
                        <ul class="list-unstyled clear-margins"><!-- widgets -->
                        
                        	<li class="widget-container widget_recent_news"><!-- widgets list -->
                    
                                <h1 class="title-widget">Contact Detail </h1>
                                
                                <div class="footerp"> 
                                
                                <h2 class="title-median">Bibilon Pvt. Ltd.</h2>
                                <p><b>Email id:</b> <a href="mailto:sandhiya2009@gmail.com">info@bibilon.com</a></p>
                                <p><b>Helpline Numbers </b>  +91-8130890090, +91-8130190010  </p>
    
    
                                </div>
                                
                                <div class="social-icons">
                                
                                	<ul class="nomargin">
                                    
                <a href="https://www.facebook.com/bootsnipp"><i class="fa fa-facebook-square fa-3x social-fb" id="social"></i></a>
	            <a href="https://twitter.com/bootsnipp"><i class="fa fa-twitter-square fa-3x social-tw" id="social"></i></a>
	            <a href="https://plus.google.com/+Bootsnipp-page"><i class="fa fa-google-plus-square fa-3x social-gp" id="social"></i></a>
	            <a href="mailto:bootsnipp@gmail.com"><i class="fa fa-envelope-square fa-3x social-em" id="social"></i></a>
                                    
                                    </ul>
                                </div>
                    		</li>
                          </ul>
                       </div>
                </div>
</div>
</footer>
<!--header-->

<div class="footer-bottom">

	<div class="container">

		<div class="row">

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

				<div class="copyright">

					© 2017, Bibilon, All rights reserved

				</div>

			</div>

			
</body>
</html>
  <%@ include file='footer.jsp' %>
  </div>
</body>
</html>