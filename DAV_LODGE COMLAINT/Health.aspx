<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Health.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 198px; width: 1179px">
        <asp:Label ID="Label15" runat="server" BackColor="#EBF1EF" 
            
            style="z-index: -2; left: 601px; top: 256px; position: absolute; height: 153px; width: 544px"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 996px; top: 111px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 592px; top: 149px; position: absolute; font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large; width: 563px;" 
            Text="Complaints Regarding Health Problems" ForeColor="#000099"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            
            style="z-index: 1; left: 599px; top: 253px; position: absolute; height: 152px; width: 549px; font-size: large; font-weight: 700;" 
            ForeColor="#003399" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Complaints Regarding Cleaniness Of Toilets In Shopping Complex</asp:ListItem>
            <asp:ListItem>Complaints Regarding Dispensary</asp:ListItem>
            <asp:ListItem>Complaints Regarding Public Toilets</asp:ListItem>
            <asp:ListItem>Public Health/Dangue/Malaria/Gastro Enterietis</asp:ListItem>
            <asp:ListItem>Dogmenace</asp:ListItem>
            <asp:ListItem>Mosquitomenace</asp:ListItem>
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
        <br />
    </p>
</asp:Content>

