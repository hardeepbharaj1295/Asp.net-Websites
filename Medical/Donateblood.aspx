<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Donateblood.aspx.cs" Inherits="Donateblood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="row">
        <br /><br />
            
            <h2 style="font-family:Times New Roman; text-align:center;">Blood Donation</h2>
            <br /><br />
            <div class="container">
               <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                Donate Blood
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <div class="form-group">
                                     <asp:Label ID="Label1" CssClass="control-label col-md-3" runat="server" 
                                        Text="Full Name"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label2" CssClass="control-label col-md-3" runat="server" 
                                        Text="Blood Group"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>A+</asp:ListItem>
                                            <asp:ListItem>B+</asp:ListItem>
                                            <asp:ListItem>O+</asp:ListItem>
                                            <asp:ListItem>A-</asp:ListItem>
                                            <asp:ListItem>B-</asp:ListItem>
                                            <asp:ListItem>O-</asp:ListItem>
                                            <asp:ListItem>AB+</asp:ListItem>
                                            <asp:ListItem>AB-</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label3" CssClass="control-label col-md-3" runat="server" 
                                        Text="Mobile Number"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox2" TextMode="Number" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label4" CssClass="control-label col-md-3" runat="server" 
                                        Text="State"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label5" CssClass="control-label col-md-3" runat="server" 
                                        Text="City"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label6" CssClass="control-label col-md-3" runat="server" 
                                        Text="Gender"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label7" CssClass="control-label col-md-3" runat="server" 
                                        Text="Password"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox5" TextMode="Password" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label8" CssClass="control-label col-md-3" runat="server" 
                                        Text="Confirm password"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox6" TextMode="Password" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8 col-md-offset-3">
                                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" 
                                            Text="Submit" onclick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
    </div>
</asp:Content>

