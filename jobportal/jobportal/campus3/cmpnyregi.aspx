<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cmpnyregi.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
  <center><h2>Company Registration</h2></center>
  <form action="/action_page.php">
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Address."></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="State"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Pin code"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Contact Person Name"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Mobile Number"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Contact Number"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
        <div class="form-group">
        <asp:Label ID="Label9" runat="server" Text="Company Website"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label10" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    
    <br />
        
        <center> 
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                /> </center>
                
   
    </div>
</asp:Content>





