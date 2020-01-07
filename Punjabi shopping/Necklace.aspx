<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Necklace.aspx.cs" Inherits="Necklace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-10 col-md-offset-1">
        <form id="Form1" runat="server">
        <br />
    	    <table width="100%" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan='5'>
                        <hr size='5' style='border-top: 4px solid;border-color:#aa6c09;'/>
                    </td>
                 </tr>
			     <tr>
                    <td>
                        <b>Item Details</b>
                    </td>
                    <td>
                        <b>Product Name</b>
                    </td>
                    <td>
                        <b>Product Description</b>
                     </td>
                     <td>
                        <b>Unit Price</b>
                     </td>
                     <td>
                        <b>Buy Now</b>&nbsp;<i class='fa fa-shopping-cart'></i>
                     </td>
                  </tr>
              
                  <tr>
                    <div runat="server" id="img"></div>
                  </tr>
             </table>
        <br><br>
        </form>
    </div>
</asp:Content>

