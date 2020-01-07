<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container">
<div class="col-md-10 col-md-offset-1">
<h2>Login Form</h2>
<br /><br /><br /><br /><br /><br /><br /><br />
<div class="panel panel-primary">
	<div class="panel-heading">
    	<div class="panel-title">User Login</div>
    </div>
    <div class="panel-body">
    	<div class="row">
        	<form id="Form1" class="form-horizontal" runat="server">
            	<div class="form-group">
                	<label class="control-label col-md-3" for="email">Email ID</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Enter Your Email_ID" required="required" autofocus="autofocus"></asp:TextBox>
      
                    </div>
                </div>
                <div class="form-group">
                	<label class="control-label col-md-3" for="pass">Passwrod</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="Password" runat="server" placeholder="Enter Your Password" required="required"></asp:TextBox>
                    
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8 col-md-offset-3">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Login" onclick="Button1_Click" 
                            />
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>
</asp:Content>

