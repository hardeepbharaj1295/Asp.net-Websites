<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <br /><br />
        <div class="container">
            <div class="col-md-8 col-md-offset-2">
                <h2 style="font-family:'Times New Roman'">Register Here....</h2><br /><br />
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">Registration Form</div>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-3 control-label" Text="Name"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" placeholder="Enter your Name..." autofocus required="required" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" CssClass="col-md-3 control-label" Text="Email"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" TextMode="Email" placeholder="Enter your Email..." required="required" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" CssClass="col-md-3 control-label" Text="Phone Number"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox3" TextMode="Number" required="required" placeholder="Enter your Number..." CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" CssClass="col-md-3 control-label" Text="Select Course"></asp:Label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="course" DataValueField="course"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [course] FROM [Courses] ORDER BY [Id]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server" CssClass="col-md-3 control-label" Text="Select Gender"></asp:Label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                    <asp:ListItem>Gender</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" CssClass="col-md-3 control-label" Text="Password"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox4" TextMode="Password" pattern=".{8,}" title="Minimum 8 characters" placeholder="Enter your Password..." required="required" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" CssClass="col-md-3 control-label" Text="Co-Password"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox5" TextMode="Password" required="required" placeholder="re-type your Password..." CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password Not Match" ForeColor="#FF3300"></asp:CompareValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary" Text="Register" />
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

