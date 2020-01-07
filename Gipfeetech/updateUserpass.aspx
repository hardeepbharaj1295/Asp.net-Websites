<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="updateUserpass.aspx.cs" Inherits="updateUserpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="col-md-8 col-md-offset-2" style="margin-top:150px;">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="panel-title">Update Password</div>                   
                </div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <asp:Label ID="Label1" CssClass="col-md-3 control-label" runat="server" Text="Old Password"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" autofocus placeholder="Enter Old Password..." TextMode="Password" required="required" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" CssClass="col-md-3 control-label" runat="server" Text="New Password"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Enter New Password..." TextMode="Password" required="required" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" CssClass="col-md-3 control-label" runat="server" Text="Co-Password"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" TextMode="Password" placeholder="Re-Enter New Password..." required="required" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="Button1_Click" runat="server" Text="Update" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

