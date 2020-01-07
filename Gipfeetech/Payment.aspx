<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

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
                        <div class="panel-title">Offline Payment Form</div>
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
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-3 control-label" Text="Your Father Name"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" placeholder="Enter your Father Name..." required="required" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                       <div class="form-group">
                            <asp:Label ID="Label2" runat="server" CssClass="col-md-3 control-label" Text="Bank Name"></asp:Label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                    <asp:ListItem>PNB</asp:ListItem>
                                    <asp:ListItem>ICICI</asp:ListItem>
                                    <asp:ListItem>SBI</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" CssClass="col-md-3 control-label" Text="Bank Branch"></asp:Label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                    <asp:ListItem>Jalandhar</asp:ListItem>
                                    
                                </asp:DropDownList>
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

