﻿<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="smsgcmpny.aspx.cs" Inherits="smsgcmpny" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
  <center><h2>Send Message</h2></center>
  <form action="/action_page.php">
    
     <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" 
             TextMode="MultiLine"></asp:TextBox><br />
         <div class="form-group">
         <asp:Label ID="Label1" runat="server" Text="Choose UserName"></asp:Label>
             <asp:DropDownList ID="DropDownList1" runat="server" 
                 DataSourceID="SqlDataSource1" DataTextField="Username" 
                 DataValueField="Username" AutoPostBack="True" CssClass="form-control">
             </asp:DropDownList>
    
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                 SelectCommand="SELECT [Username] FROM [sturegi]"></asp:SqlDataSource>
                 </div>

                 <center>
                     <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></center>
    
</asp:Content>
