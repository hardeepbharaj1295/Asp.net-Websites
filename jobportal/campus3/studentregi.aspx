<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="studentregi.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
<br /><br />
  <center><h1 style="font-family:Times New Roman"> Student Registration</h1></center>
  
  <br /><br />

    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
         <asp:Label ID="Label12" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
     <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
    
  <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True"  CssClass="form-control"
            RepeatDirection="Horizontal">
            <asp:ListItem>Male &nbsp;&nbsp;</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        </div>    
   
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Mobile no."></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
    </div>    
    
    
     
    
    
    
     <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
     <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
     <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
     <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Pincode"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label10" runat="server" Text="Set Your Password"> </asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" MaxLength="8" 
            TextMode="Password"></asp:TextBox>
    </div>
    </div>
   
    <br />
    <center> <asp:Button ID="Button1" runat="server" Text="Submit" 
            onclick="Button1_Click" /> </center>
  </form>
</div><br /><br /><br /><br /><br /><br />
</asp:Content>

