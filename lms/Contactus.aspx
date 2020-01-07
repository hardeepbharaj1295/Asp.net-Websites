<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 422px;
    }
    .style3
    {
        text-align: center;
        font-size: xx-large;
        text-decoration: underline;
    }
    .style4
    {
        width: 422px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table style="width:100% ">
<tr>

<td>


    <table class="w-100">
        <tr>
            <td class="style3" colspan="2">
                <strong class="style1" style="font-size: xx-large">Contact us</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" CssClass="style1" Text="NAME"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" CssClass="style1" Text="EMAIL"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" CssClass="style1" Text="MESSAGE"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style2">
                &nbsp;</td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT NOW" />
            </td>
        </tr>
    </table>


</td>

</tr>

</table>









</asp:Content>

