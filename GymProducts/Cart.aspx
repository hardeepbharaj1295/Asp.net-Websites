<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  <!--/banner_info-->
	<div class="banner_inner_con">
	</div>
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="Default.aspx">Home</a><span>|</span></li>
				<li id="cat" runat="server">Shopping Cart</li>
			</ul>
		</div>
	</div>
	<!--//banner_info-->
    <br /><br />
    <div class="container">
	<table id="Table1" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody id="cart" runat="server">
						
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
						</tr>
						<tr>
							<td><a href="Category.aspx" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total </strong><strong id="totals" runat="server">0</strong></td>
							<td><form runat="server"><asp:Button ID="Button2" runat="server" 
                                    CssClass="btn btn-success btn-block" Text="Checkout" onclick="Button2_Click" 
                            /> </form></td>
						</tr>
					</tfoot>
				</table>
</div>
</asp:Content>

