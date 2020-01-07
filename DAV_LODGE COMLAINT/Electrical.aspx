<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Electrical.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label15" runat="server" BackColor="#EBF1EF" 
            
            style="z-index: -2; left: 851px; top: 211px; position: absolute; height: 148px; width: 291px"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 109px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 553px; top: 141px; position: absolute; font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large; width: 588px" 
            Text="Complaints Regarding Electrical Problems"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            
            style="z-index: 1; left: 847px; top: 206px; position: absolute; height: 159px; width: 303px; font-size: large; font-weight: 700;" 
            ForeColor="#003399" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Damage To The Electric Pole</asp:ListItem>
            <asp:ListItem>Electric Shock Due To Street Light </asp:ListItem>
            <asp:ListItem>New Street Light</asp:ListItem>
            <asp:ListItem>Non Burning Of Street Lights</asp:ListItem>
            <asp:ListItem>Shifting Of Street Light Pole</asp:ListItem>
        </asp:RadioButtonList>
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

