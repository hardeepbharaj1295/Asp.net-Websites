<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Solid_Waste_Management.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 109px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="font-family: 'Lucida Calligraphy'; font-size: x-large; z-index: 1; left: 489px; top: 148px; position: absolute; font-weight: 700; width: 657px" 
            Text="Complaints Regarding Solid Waste Managment"></asp:Label>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="#003399" 
            Height="119px" 
            
            style="z-index: 1; left: 735px; top: 236px; position: absolute; height: 119px; width: 424px; font-size: large; font-weight: 700;" 
            AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Absenteesim Of Door To Door Garbage Collector</asp:ListItem>
            <asp:ListItem>Absenteesim Of Sweepers</asp:ListItem>
            <asp:ListItem>Burning Of Garbage</asp:ListItem>
            <asp:ListItem>Overflowing Of Garbage Bims</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

