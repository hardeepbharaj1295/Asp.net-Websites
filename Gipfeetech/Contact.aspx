<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- contact-page -->
<div class="contact">
	<div class="container">
		<div class="contact-page">
			<div class="contact-info">
				<h2 class="tittle">CONTACT</h2>
			</div>
			<div class="contact-map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6814.997207391911!2d75.58790840430952!3d31.34521743860529!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a5a594d22b88d%3A0x5ff818a1e8ed4aca!2sGiptech+Computers!5e0!3m2!1sen!2sin!4v1460262761586"></iframe>
			</div><br />
			<div class="contact-form">
                    <div class="form-group">
                        <div class="row col-md-12">
                            <asp:TextBox ID="TextBox1" placeholder="Enter Your Name" CssClass="form-control col-md-4" runat="server" required="required"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" placeholder="Enter Your Email" CssClass="form-control col-md-4" runat="server" required="required"></asp:TextBox>
                            <asp:TextBox ID="TextBox3" placeholder="Enter Your Number" CssClass="form-control col-md-4" runat="server" required="required"></asp:TextBox><br />
                            <asp:TextBox ID="TextBox4" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Your Message Here" required="required" runat="server"></asp:TextBox><br />
                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Submit" />
                            </div>
                    </div>
			
			</div>
		</div>
	</div>
</div>
<!-- //contact-page -->
</asp:Content>
