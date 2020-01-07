<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="Print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 47%;
            border: 1px solid #000000;
        }
        .style3
        {
            width: 273px;
        }
        .style4
        {
        }
        .style5
        {
            font-size: x-large;
        }
        .style6
        {
        }
        .style7
        {
            font-size: large;
        }
       
        .style8
        {
            height: 23px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div>
   <div>
     
   
       <table class="style2" align="center"
           style="border: medium dotted #000000; margin-left: 118px; margin-top:40px; margin-right:190px;">
           <tr >
               <td class="style4" colspan="2">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <span class="style5">GIPTECH EDUCATIONAL SOCIETY<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                   <span class="style7">(36,Aman Nager Main Road,Opp. K.M.V. College,Jal.)</span></td>
           </tr>
           <tr>
               <td class="style9">
                   <strong>&nbsp; Receipt No. </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label1" runat="server" Text="........................"></asp:Label>
               </td>
               <td class="style3">
                   <strong>Dated :</strong>&nbsp;&nbsp;
                   <asp:Label ID="Label2" runat="server" Text="..............................."></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style6" colspan="2">
                   <strong>&nbsp; Received With Thanks From</strong> :&nbsp;&nbsp;
                   <asp:Label ID="Label3" runat="server" 
                       Text="....................................................."></asp:Label>
&nbsp; </td>
           </tr>
           <tr>
               <td class="style6" colspan="2">
                   <strong>&nbsp; Sum Of Rupees</strong> :&nbsp;
                   <asp:Label ID="Label4" runat="server" 
                       Text="..................................."></asp:Label>
&nbsp; by<strong> Cash</strong> / <strong>Cheque No</strong>.
                   <asp:Label ID="Label5" runat="server" 
                       Text="..................................."></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style6" colspan="2">
                   <strong>&nbsp; Dated</strong> :
                   <asp:Label ID="Label6" runat="server" 
                       Text="........................................."></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style6" colspan="2">
                   &nbsp;&nbsp; towords Registarion/Full/Installment/Donation <strong>Fee For the Course
                   </strong>:
                   <asp:Label ID="Label7" runat="server" Text="..........................."></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="style8" colspan="2">
                   <strong>&nbsp; Total Amount Received (Rs.):&nbsp;</strong> :
                   <asp:Label ID="Label8" runat="server" Text="........................."></asp:Label>
                   .</td>
           </tr>
           <tr>
               <td class="style8" colspan="2">
                   <strong>
                   (............................................................................................................................................)</strong></td>
           </tr>
           <tr>
               <td class="style6" colspan="2">
                   &nbsp;
                   I. Fee once paid will not be refundable at any circumstances</td>
           </tr>
           <tr>
               <td class="style8" colspan="2">
                   &nbsp;
                   II. This receipt is valid subject to realisation of cheque.</td>
           </tr>
           <tr>
               <td class="style9">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <button type="submit" onclick="Javascript:window.print();">Print</button>
                   &nbsp;<h4><a href="userHome.aspx">Home</a></h4></td>
               <td class="style3">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;</td>
           </tr>
       </table>
   
   
   
   
   
   
   </div>
    
    </div>
    
    </form>
</body>
</html>
