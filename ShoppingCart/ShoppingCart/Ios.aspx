<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ios.aspx.cs" Inherits="ShoppingCart.Ios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12" style="padding:25px;">
        
        <div runat="server" id="message"></div>
    	<table class="table table-responsive">
            
			 <tr>
                <td>
                    <b>Product Name</b>
                </td>
                <td>
                    <b>Product Image</b>
                </td>
                <td>
                    <b>Cost</b>
                </td>
                <td>
                     <b>Description</b>
                 </td>
                <td>
                    <b>Specifications</b>
                 </td>
                 <td>
                     <b>Color/Warranty</b>
                 </td>
                 <td>
                    <b>Add to Cart</b>&nbsp;<i class='fa fa-shopping-cart'></i>
                 </td>
              </tr>
              
              <tr>
                <div runat="server" id="img"></div>
              </tr>
         </table>
   
    </div>
</asp:Content>
