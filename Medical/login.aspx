<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <br /><br />
            
            <h2 style="font-family:Times New Roman; text-align:center;">Login</h2>
            <br /><br />
            <div class="container">
               <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                Login
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                            <div class="form-group">
                                     <asp:Label ID="Label3" CssClass="control-label col-md-3" runat="server" 
                                        Text="Type"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                            <asp:ListItem>User</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label1" CssClass="control-label col-md-3" runat="server" 
                                        Text="Email"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label2" CssClass="control-label col-md-3" runat="server" 
                                        Text="Password"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="Password" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-8 col-md-offset-3">
                                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" 
                                            Text="Login" onclick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br /><br />
               </div>
               <br /><br />
            </div>
    </div>
</asp:Content>

