<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Status.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 494px; top: 204px; position: absolute; font-weight: 700; font-size: large;" 
            Text="Check Your Complaint Status"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 510px; top: 146px; position: absolute; font-weight: 700; text-decoration: underline; font-size: x-large; font-family: 'Lucida Calligraphy';" 
            Text="USER STATUS"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 643px; top: 250px; position: absolute"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 379px; top: 249px; position: absolute; font-weight: 700;" 
            Text="Enter Complaint Number "></asp:Label>
        <asp:Button ID="Button1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 810px; top: 248px; position: absolute; height: 26px; width: 76px; bottom: 239px; font-weight: 700;" 
            Text="GO" onclick="Button1_Click" />
        <asp:Label ID="Label15" runat="server" BackColor="#EBF1EF" 
            
            style="z-index: -2; left: 489px; top: 203px; position: absolute; height: 23px; width: 244px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 644px; top: 304px; position: absolute; height: 111px; width: 234px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 703px; top: 350px; position: absolute" 
            Text="Record Not Found" Visible="False"></asp:Label>
        <br />
        <br />
    </p>
</asp:Content>

