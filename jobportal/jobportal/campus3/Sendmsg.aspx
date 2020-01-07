<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Sendmsg.aspx.cs" Inherits="Sendmsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1 {
            width: 20%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
  <h2>
  <center>Send Message</h2></center>
  <div>
      
  </div><form action="/action_page.php">
    
     <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" 
             TextMode="MultiLine"></asp:TextBox><br />
         <div class="form-group">
        
        
       
        
             
        <asp:Label ID="Label1" runat="server" Text="Choose UserName"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" 
                 AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="username" 
                 DataValueField="username">
            </asp:DropDownList>
          
               
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                 SelectCommand="SELECT [username] FROM [sturegi]"></asp:SqlDataSource>
          
               
    </div>
   <center>   <asp:Button ID="Button1" runat="server" CssClass="btn btn-group btn-success" Text="Submit" onclick="Button1_Click" /> </center>
    </div> 
</asp:Content>

