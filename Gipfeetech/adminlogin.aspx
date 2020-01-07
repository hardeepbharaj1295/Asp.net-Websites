<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutelage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <script src="Scripts/jquery.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="col-md-8 col-md-offset-2" style="margin-top:150px;">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="panel-title">Admin Login</div>                   
                </div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <asp:Label ID="Label1" CssClass="col-md-3 control-label" runat="server" Text="EmailID"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="Email" required="required" placeholder="Enter Your EmailID" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" CssClass="col-md-3 control-label" runat="server" Text="Password"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Enter your Password" TextMode="Password" required="required" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="Button1_Click" runat="server" Text="Login" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
