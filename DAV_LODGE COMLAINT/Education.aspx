<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Education.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 110px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            
            style="z-index: 1; left: 874px; top: 208px; position: absolute; height: 26px; width: 287px; font-size: large; font-weight: 700;" 
            ForeColor="#003399" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Complaints Regarding Schools</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 724px; top: 148px; position: absolute; font-family: 'Lucida Calligraphy'; font-size: x-large; font-weight: 700; width: 435px;" 
            Text="Complaints Regarding Schools"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

