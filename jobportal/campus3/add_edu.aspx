<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="add_edu.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
<style>
    input[type="file"] {
        padding: 8px 5px;
        opacity: 1 !important;
        cursor: pointer;
        position: absolute;
        left: 34.2%;
        width: 260px;
    }
</style>
    <br />
    <br />
  <center><h1 style="font-family:Times New Roman">Add education details form</h1></center>
  <br /><br />

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

      
   <br /><br /><br />
    </div>
    <div class="form-group">
          <center> <asp:Button ID="Button1" runat="server" Text="Submit" 
                onclick="Button1_Click" /> </center>
    </div>
</div>
</asp:Content>