<%@ Page Title="Giptech Technology" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <!-- banner -->
	<div class="container">
		<script src="js/responsiveslides.min.js"></script>
			<script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			        // Slideshow 4
			        $("#slider3").responsiveSlides({
			            auto: true,
			            pager: true,
			            nav: false,
			            speed: 500,
			            namespace: "callbacks",
			            before: function () {
			                $('.events').append("<li>before event fired.</li>");
			            },
			            after: function () {
			                $('.events').append("<li>after event fired.</li>");
			            }
			        });
			    });
								</script>
        <br /><br />
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img  class="slide-image" src="image/slide-2old.jpg" alt="Chania" />
    </div>

    <div class="item">
      <img src="image/slide-4 old.jpg" alt="Flower" />
    </div>

    <div class="item">
      <img src="image/slide-3 old.jpg" alt="Flower" />
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div><br /><br />
	</div>


   

    <!-- banner-bottom -->
<div class="banner-bottom">
	<div class="container">
		<h2 class="tittle">WELCOME TO Giptech Education</h2> 
		<div class="bottom-grids">
			<div class="col-md-3 bottom-grid">
				<div class="bottom-text">
					<h3>OUR INSTRUCTIONS</h3>
					<p>Only short-listed candidates will be called for interview. 
                        Mere fulfilling of requirements as
laid down in the advertisement does not qualify a candidate for interview.</p>
				</div>
				<div class="bottom-spa"><span class="fa fa-graduation-cap" aria-hidden="true"></span></div>
			</div>
			<div class="col-md-3 bottom-grid">
				<div class="bottom-text">
					<h3>OUR SUPPORT</h3>
					<p>Our vision is for higher education to
                         be a positive force for greater freedom, 
                        opportunity, and well-being for all.</p>
				</div>
				<div class="bottom-spa"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></div>
			</div>
			<div class="col-md-3 bottom-grid">
				<div class="bottom-text">
					<h3>OUR GUARANTEE</h3>
					<p>The faculty and staff of the Computer Language Institute 
                        are committed to taking care of students.</p>
				</div>
				<div class="bottom-spa"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
			</div>
			<div class="col-md-3 bottom-grid">
				<div class="bottom-text">
					<h3>OUR RELIABILITY</h3>
					<p>The Reliability Institute is an organisation of
                         widely experienced maintenance and reliability professionals.</p>
				</div>
				<div class="bottom-spa"><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //banner-bottom -->

    
<div class="teachers">
	<div class="container">
		<div class="teach-head">
			<h3>OUR TEACHERS</h3>
			<p>Our teachers are the heart of our schools, dedicated to helping our students achieve their learning goals.</p>
		</div>
		<div class="team-grids">
			<div class="col-md-3 team-grid text-center">
				<div class="team-img">
					<img src="images/1.png" alt=""/>
					<h3>FEDERICA</h3>
					<h4>Programmer</h4>
					<p>Programming Language like : C,C++,JAVA,ASP.NET,PHP</p>
					<ul>
						<li><a class="fb" href="#"></a></li>
						<li><a class="twitt" href="#"></a></li>
						<li><a class="goog" href="#"></a></li>
						<li><a class="drib" href="#"></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 team-grid text-center">
				<div class="team-img">
					<img src="images/2.png" alt=""/>
					<h3>PATRICK</h3>
					<h4>Designer</h4>
					<p>HTML5,CSS3,Java Script,XML</p>
					<ul>
						<li><a class="fb" href="#"></a></li>
						<li><a class="twitt" href="#"></a></li>
						<li><a class="goog" href="#"></a></li>
						<li><a class="drib" href="#"></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 team-grid text-center">
				<div class="team-img">
					<img src="images/3.png" alt=""/>
					<h3>THOMPSON</h3>
					<h4>Developer</h4>
					<p>Websites, Web-Applications,Android Apps,Softwares.</p>
					<ul>
						<li><a class="fb" href="#"></a></li>
						<li><a class="twitt" href="#"></a></li>
						<li><a class="goog" href="#"></a></li>
						<li><a class="drib" href="#"></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 team-grid text-center">
				<div class="team-img">
					<img src="images/4.png" alt=""/>
					<h3>VICTORIA</h3>
					<h4>Network</h4>
					<p>Computer Network,Big Data analysis,Business Analysis,Wireless Network.</p>
					<ul>
						<li><a class="fb" href="#"></a></li>
						<li><a class="twitt" href="#"></a></li>
						<li><a class="goog" href="#"></a></li>
						<li><a class="drib" href="#"></a></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- team -->

    <!-- our facilities -->
<div class="facilities">
	<div class="container">
		<h3 class="tittle">FACILITIES</h3> 	
			<script src="js/jquery.swipebox.min.js"></script> 
			<script type="text/javascript">
			    jQuery(function ($) {
			        $(".swipebox").swipebox();
			    });
			</script>
				<div class="view view-seventh">
                    <a href="images/g1.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g1.jpg" alt="" >
                    <div class="mask">
                        <h4>Giptech Institute</h4>
                        <p>Giptech Computer Education is one of the oldest institute in Jalandhar.</p>
                        
                    </div></a>
                </div>
                <div class="view view-seventh">
                    <a href="images/g2.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g2.jpg" alt="" >
                    <div class="mask">
                         <h4>Giptech Institute</h4>
                        <p>We are the authorized study center of Lovely Professional University.</p>
                        
                    </div></a>
                </div>
                <div class="view view-seventh">
                    <a href="images/g3.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g3.jpg" alt="">
                    <div class="mask">
                         <h4>Giptech Institute</h4>
                        <p>Courses are recognised by UGC and joint committee of UGC-AICTE-DEC.</p>
                        
                    </div></a>
                </div>
                <div class="view view-seventh">
                    <a href="images/g4.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g4.jpg" alt="">
                    <div class="mask">
                        <h4>Giptech Institute</h4>
                        <p> We are the authorized testing centre for Symbiosis. </p>
                        
                    </div></a>
                </div>
				<div class="view view-seventh">
                    <a href="images/g5.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g5.jpg" alt="">
                    <div class="mask">
                        <h4>Giptech Institute</h4>
                        <p> An ISO 9001-2008 Certified Institute , Giptech is pioneer in Hardware & Software Education. We are providing training in .Net, PHP, Web-Designing, 
                            VB.Net, Tally, 6 weeks/ 6 months Industrial training for Diploma Students, MCA/ B tech Students.</p>
                        
                    </div></a>
                </div>
				<div class="view view-seventh">
                    <a href="images/g6.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title"><img src="images/g6.jpg" alt="">
                    <div class="mask">
                        <h4>Giptech Institute</h4>
                        <p>We are the authorized Service provider for LPU distance education courses . All Courses of LPU DE are UGC Recognized.</p>
                        
                    </div></a>
                </div>
				<div class="clearfix"></div>
	</div>
</div>
<!-- //our facilities -->

    <!-- features -->
<div class="features">
	<div class="container">
		<h3 class="tittle">Giptech Computer Institute</h3> 
		<div class="col-md-5 features-left">
			<img src="images/f1.jpg" alt=""/>
		</div>
		<div class="col-md-7 features-right">
			<h4>About Giptech Institute</h4>
				<p>  Giptech Computer Education is one of the oldest institute in Jalandhar.
                     An ISO 9001-2008 Certified Institute , Giptech is pioneer in Hardware Software Education. 
                    We are providing training in .Net, PHP, Web-Designing, VB.Net, Tally, 
                    6 weeks/ 6 months Industrial training for Diploma Students, MCA/ B tech Students.
     We are the authorized study center of Lovely Professional University, providing under graduate and
                     post-graduate courses in IT/Computer Aplication, Management, Commerce, Library & Information Sciences & Arts streams. 
                    All Courses are recognised by UGC and joint committee of UGC-AICTE-DEC. We are the authorized testing centre for Symbiosis.
</p>

		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //features -->
</asp:Content>
