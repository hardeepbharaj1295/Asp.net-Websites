<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_Complaints1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 171px; width: 1384px">
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 1093px; top: 335px; position: absolute; width: 181px; height: 27px" 
            Text="Detail Of Complaint"></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="z-index: 1; left: 1273px; top: 130px; position: absolute; font-style: italic; font-weight: 700; width: 68px; font-size: large">Log Out</asp:LinkButton>
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 1131px; top: 460px; position: absolute" 
            Text="RESOLVED" />
        <asp:Label ID="Label5" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 593px; top: 427px; position: absolute" 
            Text="Remarks is Submitted" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 958px; top: 241px; position: absolute; font-size: xx-large; width: 307px; font-weight: 700; height: 30px; text-align: center;" 
            Text="Complaint Master" ForeColor="#009933"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 1093px; top: 308px; position: absolute; width: 108px; height: 18px; font-size: large;" 
            Text="Complaint No. "></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 917px; top: 307px; position: absolute; font-size: medium;" 
            Text="Complaint No."></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 1091px; top: 418px; position: absolute" 
            TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" ForeColor="#0033CC" 
            style="z-index: 1; left: 1102px; top: 132px; position: absolute" 
            Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 917px; top: 426px; position: absolute; width: 63px; font-size: medium;" 
            Text="Remarks :"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; left: 917px; top: 340px; position: absolute" 
            Text="Detail Of Complaint"></asp:Label>
        <br />
    </p>
</asp:Content>

