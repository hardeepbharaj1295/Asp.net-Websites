<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="slider">
		<ul>
			<li style="background-image: url(images/slide1.jpg)">
				<h3>Indian Cards</h3>
			</li>
			<li class="purple" style="background-image: url(images/slide2.jpg)">
				<h3>Theme Cards</h3>
			</li>
			<li class="yellow" style="background-image: url(images/Wedding.png)">
				<h3>Design Cards</h3>
			</li>
		</ul>
	</div>
	<!-- / body -->

	<div id="body">
		<div class="container">
			<div class="last-products">
				<h2>Last added products</h2>
				<section class="products">
					<article>
						<img src="images/s1.jpg" alt="">
						<h3>All Available Scrolls</h3>
						<h4>$2</h4>
					</article>
					<article>
						<img src="images/s2.jpg" alt="">
						<h3>Small Size Scrolls</h3>
						<h4>$5</h4>
					</article>
					<article>
						<img src="images/t1.jpg" alt="">
						<h3>Peacock Theme Cards</h3>
						<h4>$1</h4>
					</article>
					<article>
						<img src="images/i1.jpg" alt="">
						<h3>Wedding Card</h3>
						<h4>$2 </h4>
					</article>
					<article>
						<img src="images/t2.jpg" alt="">
						<h3>Odd Shape Invitations</h3>
						<h4>$3</h4>
					</article>
				</section>
			</div>
			<section class="quick-links">
            <div class="row">
            	<div class="col-md-4">
				<article style="background-image: url(images/2.jpg)">
					<a href="#" class="table">
						<div class="cell">
							<div class="text">
								<h4>Lorem ipsum</h4>
								<hr>
								<h3>Dolor sit amet</h3>
							</div>
						</div>
					</a>
				</article>
                </div>
                <div class="col-md-4">
				<article class="red" style="background-image: url(images/3.jpg)">
					<a href="#" class="table">
						<div class="cell">
							<div class="text">
								<h4>consequatur</h4>
								<hr>
								<h3>voluptatem</h3>
								<hr>
								<p>Accusantium</p>
							</div>
						</div>
					</a>
				</article>
                </div>
                <div class="col-md-4">
				<article style="background-image: url(images/4.jpg)">
					<a href="#" class="table">
						<div class="cell">
							<div class="text">
								<h4>culpa qui officia</h4>
								<hr>
								<h3>magnam aliquam</h3>
							</div>
						</div>
					</a>
				</article>
                </div>
                </div>
			</section>
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->
</asp:Content>

