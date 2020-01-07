<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<link href="css/contact.css" rel="stylesheet" type="text/css" media="all" />
<!--/banner_info-->
	<div class="banner_inner_con">
	</div>
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="index.html">Home</a><span>|</span></li>
				<li>Contact</li>
			</ul>
		</div>
	</div>
	<!--//banner_info-->
	<!-- /inner_content -->
<div class="banner_bottom">
		<div class="container">
			
			<div class="mail_form">
				<h3 class="tittle-w3ls">Send Us a Message</h3>
				<div class="inner_sec_info_wthree_agile">
					<form runat="server">
						<span class="input input--chisato">
                        <asp:TextBox ID="TextBox1" CssClass="input__field input__field--chisato" runat="server" required="required"></asp:TextBox>
						
                        <label class="input__label input__label--chisato" for="input-13">
							<span class="input__label-content input__label-content--chisato" data-content="Name">Name</span>
						</label>
						</span>
						<span class="input input--chisato">
						<asp:TextBox ID="TextBox2" CssClass="input__field input__field--chisato" runat="server" required="required"></asp:TextBox>
                        <label class="input__label input__label--chisato" for="input-14">
							<span class="input__label-content input__label-content--chisato" data-content="Email">Email</span>
						</label>
						</span>
						<span class="input input--chisato">
						<asp:TextBox ID="TextBox3" CssClass="input__field input__field--chisato" runat="server" required="required"></asp:TextBox>
                        <label class="input__label input__label--chisato" for="input-15">
							<span class="input__label-content input__label-content--chisato" data-content="Subject">Subject</span>
						</label>
						</span>
                          <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="10" Columns="30" required="required" placeholder="Type Your Message"></asp:TextBox>           
                    
					

                         <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
                          Text="Send Message" onclick="Button1_Click"/>    
					</form>

				</div>
			</div>
			<div class="inner_sec_info_wthree_agile">
           	<div class="col-md-8 map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84010033106!2d-74.25819252532891!3d40.70583163828471!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1475140387172"
					    style="border:0"></iframe>
				</div>
				<div class="col-md-4 contact_grids_info">
					<div class="contact_grid">
						<div class="contact_grid_right">
							<h4> OFFICE 1</h4>
							<p>435 City hall,</p>
							<p>NewYork City SD092.</p>
						</div>
					</div>
					<div class="contact_grid">
						<div class="contact_grid_right">
							<h4> OFFICE 2</h4>
							<p>8088 Jasmine hall,</p>
							<p>NewYork City SD092.</p>
						</div>
					</div>
					<div class="contact_grid" data-aos="flip-up">

						<div class="contact_grid_right">
							<h4>OFFICE 3</h4>
							<p>436 Honey hall,</p>
							<p>NewYork City SD092.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>


</asp:Content>

