<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="OnlinePay.aspx.cs" Inherits="OnlinePay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
        <br /><br />
        <div class="container">
            <div class="col-md-8 col-md-offset-2">
                <h2 style="font-family:'Times New Roman'">Payment Here....</h2><br /><br />
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">Admission Form</div>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                             <div class="form-group">
                            <asp:Label ID="Label4" runat="server" CssClass="col-md-3 control-label" Text="Register ID"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" ReadOnly="true" placeholder="Register ID..." TextMode="Number" autofocus required="required" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        
                       <div class="form-group">
                            <asp:Label ID="Label2" runat="server" CssClass="col-md-3 control-label" Text="Card Type"></asp:Label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                    <asp:ListItem>Credit Card</asp:ListItem>
                                    <asp:ListItem>ICICI</asp:ListItem>
                                    <asp:ListItem>Debit Card</asp:ListItem>
                                    <asp:ListItem>Reliance</asp:ListItem>
                                    <asp:ListItem>Cash Card</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-3 control-label" Text="Your Card Number"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" TextMode="Number" placeholder="Enter your Card Number..." required="required" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" CssClass="col-md-3 control-label" Text="Enter Amount"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox3" placeholder="Enter Amount..." TextMode="Number" required="required" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary" Text="Submit" />
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

