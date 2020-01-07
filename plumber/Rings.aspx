<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rings.aspx.cs" Inherits="Rings" %>

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
                    <b>Shop Details</b>
                </td>
                <td>
                    <b>Shop Name</b>
                </td>
                <td>
                    <b>Shop Description</b>
                 </td>
                 <td>
                    <b>Contatct Number</b>
                 </td>
              </tr>
              
              
              <tr>
               <style>
            td
            {
                padding:10px;
            }
        </style>
                <div runat="server" id="img"></div>
              </tr>
         </table>
    <br><br>
    </form>
</div>
</asp:Content>

