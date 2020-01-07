<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<!--/banner_info-->
	<div class="banner_inner_con">
	</div>
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="Default.aspx">Home</a><span>|</span></li>
				<li>About</li>
			</ul>
		</div>
	</div>
	<!--//banner_info-->
	<!--/ab-->
	<div class="banner_bottom">
		<div class="container">
			<h3 class="tittle-w3ls">About Us</h3>
			<div class="inner_sec_info_wthree_agile">
				<div class="help_full">

					<div class="col-md-6 banner_bottom_grid help">
						<img src="images/ab.png" alt=" " class="img-responsive">
					</div>
					<div class="col-md-6 banner_bottom_left">
						<h4>Who We are</h4>
						<p>We are successfully running this bussiness from last five years. With every year as are bussiness is growing our customers are also growing.</p>
						<p>We are thankfull to our customers for supporting us and making us able to live up to their satisfaction.</p>
						
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			
		</div>
	</div>
	<!--//ab-->
	
	<!--/testimonials-->
	<div class="tesimonials">
		<div class="container">
			<h3 class="tittle-w3ls cen">Testimonials</h3>
			<div class="inner_sec">
				<div class="test_grid_sec">
					<div class="col-md-offset-2 col-md-8">
						<div class="carousel slide two" data-ride="carousel" id="quote-carousel">
							<!-- Bottom Carousel Indicators -->
							<ol class="carousel-indicators two">
								<li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
								<li data-target="#quote-carousel" data-slide-to="1"></li>
							</ol>

							<!-- Carousel Slides / Quotes -->
							<div class="carousel-inner">

								<!-- Quote 1 -->
								<div class="item active">
									<blockquote>
										<div class="test_grid">
											<div class="col-sm-3 text-center test_img">
												<img src="images/t1.jpg" class="img-responsive" alt="">

											</div>
											<div class="col-sm-9 test_img_info">
												<p>I bought sports good for my son. He is very happy with the product and I am very happy as its cost is very affordable.</p>
												<h6>Jyoti</h6>
											</div>
										</div>
									</blockquote>
								</div>
								<!-- Quote 2 -->
								<div class="item">
									<blockquote>
										<div class="test_grid">
											<div class="col-sm-3 text-center test_img">
												<img src="images/t2.jpg" class="img-responsive" alt="">
											</div>
											<div class="col-sm-9 test_img_info">
												<p>I am very found of sports goods. This is the best place get variety of products with best quality and price.</p>
												<h6>Rohit</h6>
											</div>
										</div>
									</blockquote>
								</div>
								<!-- Quote 3 -->
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--//testimonials-->
	
</asp:Content>

