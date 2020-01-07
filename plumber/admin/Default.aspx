<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin/Supplier</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>
<link rel="stylesheet" type="text/css" href="css/web.css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/back-to-top.js"></script>
<script type="text/javascript" src="js/bootstrap-hover-dropdown.min.js"></script>
</head>

<body>
<div class="container">
<div class="col-md-8 col-md-offset-2" style="margin-top:20px;">
<h2>Admin/Suppiler Login</h2><br /><br />
<div class="panel panel-primary">
	<div class="panel-heading">
    	<div class="panel-title">Admin/Supplier Login</div>
    </div>
    <div class="panel-body">
    	<div class="row">
            <form id="form2" class="form-horizontal" runat="server">
                <div class="form-group">
                    <asp:Label ID="Label3" class="control-label col-md-3" runat="server" Text="Select Type"></asp:Label>
                    <div class="col-md-8">
                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Supplier</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            	<div class="form-group">
                    <asp:Label ID="Label1" class="control-label col-md-3" runat="server" Text="Email ID"></asp:Label>
                
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox1" class="form-control" runat="server" 
                            placeholder="Enter your Email" required TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" class="control-label col-md-3" Text="Passwrod" ></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox2" class="form-control" runat="server" 
                            placeholder="Enter your Password" required TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8 col-md-offset-3">
                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Login" 
                            onclick="Button1_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>