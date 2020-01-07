<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="log.aspx.cs" Inherits="log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
  <center><h2>Login</h2></center>
  <form action="/action_page.php">
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="User Type"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" 
            AutoPostBack="True">
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Company</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
    </div>
    
   
        
        <center> <asp:Button ID="Button1" runat="server" Text="Submit" 
                CssClass="btn btn-success" onclick="Button1_Click" />  
                 </center>

    </div>   <br /><br /><br />   <br /><br /><br />   <br /><br /><br />   
</asp:Content>

