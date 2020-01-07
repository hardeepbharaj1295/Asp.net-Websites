<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alogin.aspx.cs" Inherits="alogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="row">
        <div class="container" style="margin-top:50px; margin-bottom:50px">
            <div class="col-md-8 col-md-offset-2">
                <h1 style="font-family:'Times New Roman'">Welcome To Admin Panel</h1><br /><br />
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Admin Login</div>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label AssociatedControlID="username" runat="server" CssClass="col-md-3 control-label">Username</asp:Label>
                                <div class="col-md-7">
                                    <asp:TextBox TextMode="SingleLine" runat="server" ID="username" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label AssociatedControlID="password" runat="server" CssClass="col-md-3 control-label">Password</asp:Label>
                                <div class="col-md-7">
                                    <asp:TextBox TextMode="Password" runat="server" ID="password" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-7 col-md-offset-3">
                                    <asp:Button CssClass="btn btn-info" runat="server" ID="button" Text="Login" OnClick="button_Click"/>
                                </div>
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
