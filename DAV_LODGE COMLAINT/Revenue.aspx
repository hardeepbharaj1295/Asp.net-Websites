<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Revenue.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 110px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            
            style="z-index: 1; left: 705px; top: 225px; position: absolute; height: 124px; width: 445px; font-size: large; font-weight: 700;" 
            ForeColor="#003399" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Revenue</asp:ListItem>
            <asp:ListItem>Complaints Related To Issue Of All Types Of License</asp:ListItem>
            <asp:ListItem>Complaints Related To Property Tax</asp:ListItem>
            <asp:ListItem>Inclusion,Detection Of Correction In The Voter List</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 569px; top: 141px; position: absolute; font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large; width: 572px" 
            Text="Complaints Regarding Revenue Problems"></asp:Label>
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

