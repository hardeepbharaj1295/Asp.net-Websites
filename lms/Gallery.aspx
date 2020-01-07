<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
   
<table style="width: 90%">

<tr>
<td class="style1">
<asp:Image ID="Image2" runat="server" Height="250px" 
        ImageUrl="~/images/ebs.jpg" Width="250px" />

    

</td>
<td class="style2">

    <asp:Image ID="Image1" runat="server" Height="250px" 
        ImageUrl="~/images/g8.jpg" Width="250px" />


</td>


<td>

    <asp:Image ID="Image3" runat="server" Height="250px" ImageUrl="~/images/g1.jpg" 
        Width="250px" />



</td>
</tr>

<tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>



        <tr>
        
        <td class="style1">
        
            <asp:Image ID="Image4" runat="server" Height="250px" ImageUrl="~/images/g5.jpg" 
                Width="250px" />
        
        
        </td>
        
        <td class="style2">
        
            <asp:Image ID="Image5" runat="server" Height="250px" ImageUrl="~/images/g4.jpg" 
                Width="250px" />
        
        </td>
        <td>
        
            <asp:Image ID="Image6" runat="server" Height="250px" ImageUrl="~/images/images.jpg" 
                Width="250px" />
        
        </td>
        
            
        </tr>




</table>
</asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
        width: 300px;
    }
    .style2
    {
            width: 322px;
        }
    </style>
</asp:Content>




