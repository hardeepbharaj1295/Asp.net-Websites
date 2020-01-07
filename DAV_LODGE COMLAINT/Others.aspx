<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Others.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 110px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            ForeColor="#003399" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            
            style="z-index: 1; left: 914px; top: 215px; position: absolute; height: 27px; width: 198px; font-weight: 700; font-size: large;">
            <asp:ListItem>Describe Complaint</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 537px; top: 141px; position: absolute; font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large; width: 604px" 
            Text="Complaints Regarding Any Other Problems"></asp:Label>
        <br />
        <br />
        <br />
    </p>
</asp:Content>

