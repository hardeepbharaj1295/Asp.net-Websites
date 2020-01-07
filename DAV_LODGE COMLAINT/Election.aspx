<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Election.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 577px; top: 141px; position: absolute; font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large; width: 564px" 
            Text="Complaints Regarding Election Problems"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            
            style="z-index: 1; left: 848px; top: 193px; position: absolute; height: 146px; width: 379px; font-size: large; font-weight: 700;" 
            ForeColor="#003399" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            
            <asp:ListItem>Complaints Regarding Voter List </asp:ListItem>
            <asp:ListItem>Issue Of Voter ID</asp:ListItem>
            <asp:ListItem>Name Error (Spelling Related)</asp:ListItem>
            <asp:ListItem>Name Not Found In Electoral Roll</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 110px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <br />
        <br />
    </p>
</asp:Content>

