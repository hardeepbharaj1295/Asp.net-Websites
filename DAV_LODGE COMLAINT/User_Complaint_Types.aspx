<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Complaint_Types.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 1200px">
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 995px; top: 111px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 893px; top: 145px; position: absolute; height: 25px; font-weight: 700; font-family: 'Lucida Calligraphy'; width: 264px; text-align: center;" 
            Text="Complaint Types" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#000099"></asp:Label>
        <br />
        
        <br />
        <br />
        
        <asp:Label ID="Label15" runat="server" BackColor="#EBF1EF" 
            
            
            style="z-index: -2; left: 914px; top: 207px; position: absolute; height: 230px; width: 228px"></asp:Label>
        
        <br />
        
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            
            style="z-index: 1; left: 915px; top: 204px; position: absolute; height: 202px; width: 272px; font-weight: 700; font-size: large;" 
            ForeColor="#003399">
            <asp:ListItem>General</asp:ListItem>
            <asp:ListItem>Health</asp:ListItem>
            <asp:ListItem>Solid Waste Management</asp:ListItem>
            <asp:ListItem>Education</asp:ListItem>
            <asp:ListItem>Revenue</asp:ListItem>
            <asp:ListItem>Electrical</asp:ListItem>
            <asp:ListItem>Enginering</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        
        <br />
        <br />
        
        
        <br />
        
        
        <br />
        
        <br />
    </p>
</asp:Content>

