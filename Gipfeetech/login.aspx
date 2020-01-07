<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <br /><br />
        <div class="container">
            <div class="col-md-8 col-md-offset-2">
                <h2 style="font-family:'Times New Roman'">Login Here....</h2><br /><br />
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">Login Form</div>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-3 control-label" Text="EmailID"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" TextMode="Email" autofocus placeholder="Enter your Email ID..." required="required" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" CssClass="col-md-3 control-label" Text="Password"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" TextMode="Password" required="required" placeholder="Enter your password..." CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                           </div>
                            <div class="form-group">
                                   <div class="col-md-8 col-md-offset-3">
                                       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary" Text="Login" />
                                  </div>
                           </div>
                        </div>
                    </div>
                </div>
                <br /><br />
            </div>
        </div>
    </div>
</asp:Content>

