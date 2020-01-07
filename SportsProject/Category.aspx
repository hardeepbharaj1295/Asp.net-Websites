<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

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
				<li id="cat" runat="server">Sports Categories</li>
			</ul>
		</div>
	</div>
	<!--//banner_info-->
    <br />
    <div class="container">
         <div class="row" id="tab" runat="server">

         </div>
    </div>
</asp:Content>

