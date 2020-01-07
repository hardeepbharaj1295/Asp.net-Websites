<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <br /><br />
            
            <h2 style="font-family:Times New Roman; text-align:center;">Register</h2>
            <br /><br />
            <div class="container">
               <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                Register
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <div class="form-group">
                                     <asp:Label ID="Label1" CssClass="control-label col-md-3" runat="server" 
                                        Text="Name"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label2" CssClass="control-label col-md-3" runat="server" 
                                        Text="Email"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox2" TextMode="Email" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
                                     <asp:Label ID="Label3" CssClass="control-label col-md-3" runat="server" 
                                        Text="DOB"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" required></asp:TextBox>
                             <asp:ImageButton ID="imgPopup" ImageUrl="images/calendar.png" ImageAlign="Bottom"
        runat="server" />
                            <cc1:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="TextBox3"
        Format="dd/MM/yyyy"> </cc1:CalendarExtender>
                                    </div>
                                </div>
                                 
                                 <div class="form-group">
                                     <asp:Label ID="Label5" CssClass="control-label col-md-3" runat="server" 
                                        Text="Gender"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                 <div class="form-group">
                                     <asp:Label ID="Label6" CssClass="control-label col-md-3" runat="server" 
                                        Text="Mobile no"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox5" TextMode="Number" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                     <asp:Label ID="Label7" CssClass="control-label col-md-3" runat="server" 
                                        Text="Area"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox6" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label8" CssClass="control-label col-md-3" runat="server" 
                                        Text="City"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox7" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label9" CssClass="control-label col-md-3" runat="server" 
                                        Text="State"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox8" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label10" CssClass="control-label col-md-3" runat="server" 
                                        Text="Status"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Married</asp:ListItem>
                                            <asp:ListItem>Unmarried</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label11" CssClass="control-label col-md-3" runat="server" 
                                        Text="Password"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox9" TextMode="Password" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label12" CssClass="control-label col-md-3" runat="server" 
                                        Text="Co-password"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox10" TextMode="Password" CssClass="form-control" required="required" runat="server"></asp:TextBox>
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
                    <br /><br />
               </div>
               <br /><br />
            </div>
    </div>
</asp:Content>

