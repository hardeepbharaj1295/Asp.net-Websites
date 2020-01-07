<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 318px;
        }
        .style4
        {
            width: 327px;
        }
    .style5
    {
        width: 361px;
    }
    .style6
    {
        text-decoration: underline;
        font-size: x-large;
    }
    .style7
    {
        text-decoration: underline;
    }
    .style8
    {
        width: 100%;
        font-size: xx-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<table style="width: 90%">

<tr>
<td class="style8">


    Our Library Management Service caters to both home and small


    organizational libraries. Our online software lets you create multiple 
    libraries, catalog books, question papers etc. Books are just the beginning.Our 
    dedicated staff can help you to find what you need, access primary research 
    material, and develop your study and research skills.</tr>
<tr>
<td>


    <br />


</td>
<tr>
<td>



    <strong>



    <asp:Label ID="Label1" runat="server" Text="Library Service" CssClass="style6"></asp:Label>
    <span class="style6">s--</span></strong>: <span class="style1">You need to know about borrowing, renewing and returning the items you need 
    and how to request items that we don&#39;t have in libraries.</span><br />
    <span class="style7"><strong class="style1">Study Support--:</strong></span>
    <span class="style1">Library supports taught students to develop academic 
    skills,through online resources, workshops,
    one-to-one appointments,drop-in sessions and teaching in the curriculum.</span><br />



</td>
</tr>
<tr>
<td>



    <table class="style2">
        <tr>
            <td class="style5">
                <asp:Image ID="Image2" runat="server" Height="160px" 
                    ImageUrl="~/images/galle-face-hotel-Library.jpg" Width="200px" />
                <br />
            </td>
            <td class="style4">
                <asp:Image ID="Image3" runat="server" Height="160px" 
                    ImageUrl="~/igd/automatic information.png" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <br >
                <asp:Label ID="Label2" runat="server" Text="LIBRARY MANAGEMENT"></asp:Label>
                <br />
                <br />
                whether you have 50 items or 100,000<br />
                items, your library is precious. with library managing your private library of 
                books.</td>
            <td class="style4">
                <br />
                <asp:Label ID="Label3" runat="server" Text="AUTOMATIC INFORMATION"></asp:Label>
                <br />
                <br />
                scan, search and library automatically retrieves that item&#39;s cover art and all 
                pertinent information.<br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Image ID="Image4" runat="server" Height="160px" 
                    ImageUrl="~/igd/create-review-publish-analyze-alt@2x.png" Width="200px" />
            </td>
            <td class="style3">
                <asp:Image ID="Image5" runat="server" Height="160px" 
                    ImageUrl="~/igd/scan ur images.jpg" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <br ><strong>PUBLISH AND REVIEW ITEMS</strong><br />
                <br />
                Library makes it easy to publiush libraries for everyone to view. you can also 
                review your items for the public to<br />
                read.</td>
            <td class="style3">
              <br >  <strong>SCAN YOUR ITEMS</strong><br />
                <br />
                for a cost-efficient bar code scanner, we recommend this handheld laser barcode<br />
                scanner.</td>
        </tr>
    </table>



</td>


</tr>

</table>




</asp:Content>

