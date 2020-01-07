<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

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
				<li id="cat" runat="server"></li>
			</ul>
		</div>
	</div>
	<!--//banner_info-->
	<!--/ab-->
	<div class="banner_bottom">
		<div class="container">
			<h3 class="tittle-w3ls">Products</h3>
			<div class="inner_sec_info_wthree_agile">
				<!--/projects-->
				
				<ul class="portfolio-area" id="prd" runat="server">

					<div class="clearfix"></div>
				</ul>
				<!--end portfolio-area -->

			</div>

		</div>
		<!--//projects-->

	</div>
	<!--//bottom-->

</asp:Content>

