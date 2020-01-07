<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Enginering.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label15" runat="server" BackColor="#EBF1EF" 
            
            style="z-index: -2; left: 701px; top: 228px; position: absolute; height: 172px; width: 443px"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 109px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="#003399" 
            
            style="z-index: 1; left: 701px; top: 223px; position: absolute; height: 182px; width: 448px; font-weight: 700; font-size: large;" 
            AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Cleaning Of Water Table</asp:ListItem>
            <asp:ListItem>Complaints Regarding Park</asp:ListItem>
            <asp:ListItem>Complaints Regarding Play Groups</asp:ListItem>
            <asp:ListItem>Removal Of Shops In The Footpath</asp:ListItem>
            <asp:ListItem>Overhead Cable Wires Running In Hapazard Manner</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 517px; top: 141px; position: absolute; font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large; width: 624px" 
            Text="Complaints Regarding Engineering Problems"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

