<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="General.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 110px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 580px; top: 141px; position: absolute; font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large; width: 561px" 
            Text="Complaints Regarding General Problems"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            
            style="z-index: 1; left: 832px; top: 190px; position: absolute; height: 102px; width: 345px; font-size: large; font-weight: 700;" 
            ForeColor="#003399" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>General</asp:ListItem>
            <asp:ListItem>Change Of Address In Electoral Roll</asp:ListItem>
            <asp:ListItem>Unauthorised Advt.Boards</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

