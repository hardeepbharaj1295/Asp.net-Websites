<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
<div class="col-md-10 col-md-offset-1">
<h2>Registration Form</h2>
<br /><br /><br /><br /><br /><br />
<div class="panel panel-primary">
	<div class="panel-heading">
    	<div class="panel-title">User Register</div>
    </div>
    <div class="panel-body">
    	<div class="row">
        	<form id="Form1" class="form-horizontal" runat="server">
            	<div class="form-group">
                	<label class="control-label col-md-3" for="email">Name</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Enter Your Name" required="required" autofocus="autofocus"></asp:TextBox>
                    	
                    </div>
                </div>
            	<div class="form-group">
                	<label class="control-label col-md-3" for="email">Email ID</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Enter Your Email_ID" required="required"></asp:TextBox>
      
                    </div>
                </div>
                <div class="form-group">
                	<label class="control-label col-md-3" for="email">Address</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="5" placeholder="Enter Your Address" required="required"></asp:TextBox>
      
                    </div>
                </div>
                <div class="form-group">
                	<label class="control-label col-md-3" for="email">Number</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox3" TextMode="Number" CssClass="form-control" runat="server" placeholder="Enter Your Number" required="required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                	<label class="control-label col-md-3" for="pass">Passwrod</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="Password" placeholder="Enter Your Password" required="required"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                	<label class="control-label col-md-3" for="pass">Co-Passwrod</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="Password" placeholder="Enter Your Conform Password" required="required"></asp:TextBox>
                 
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                            ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
                 
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8 col-md-offset-3">
                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Button" 
                            onclick="Button1_Click"  />
                   
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>
<br /><br />
</asp:Content>

