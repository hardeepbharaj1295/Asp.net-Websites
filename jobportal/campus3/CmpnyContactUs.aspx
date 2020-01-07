<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="CmpnyContactUs.aspx.cs" Inherits="CmpnyContactUs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br /><br />
    <center>
    <img src="pics/message.jpg" style="width:280px"/>
    </center>
    <div class="container">
        <div class="form-group">
        
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
                 <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" 
             TextMode="MultiLine"></asp:TextBox><br />

                 <center>
                     <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></center>
    </div>
    </div>
    <br />
    <br />

</asp:Content>

