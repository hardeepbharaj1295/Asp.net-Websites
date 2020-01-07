<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="add_edu.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
  <center><h2>Add education details form</h2></center>
  <form action="/action_page.php">
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="College Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Enroll NO."></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Semester"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Branch"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Passing Year"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Skill"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Extra Skill"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Resume"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />

        <center> <asp:Button ID="Button1" runat="server" Text="Submit" 
                onclick="Button1_Click" /> </center>
   <br /><br /><br />
    </div>
</asp:Content>