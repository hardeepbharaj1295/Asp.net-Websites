<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ShoppingCart.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12" style="padding:25px;">
        
        <div runat="server" id="message">
        </div>
    	<%--<table class="table table-responsive">
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
                    <b>Cost</b>
                 </td>
                 <td>
                    <b>Remove</b>&nbsp;<i class='fa fa-shopping-cart'></i>
                 </td>
              </tr>
              
              <tr>
                <div runat="server" id="img"></div>
              </tr>
         </table>--%>
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-condensed" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Product Image">
                    <ControlStyle Height="250px" Width="200px" />
                </asp:ImageField>
                <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:BoundField DataField="specifications" HeaderText="Specifications" HtmlEncode="False" SortExpression="specifications" />
                <asp:BoundField DataField="colors" HeaderText="Colors" SortExpression="colors" HtmlEncode="False" />
                <asp:CommandField HeaderText="Remove Product" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Cart.Id, Products.type, Products.name, Products.image, Products.cost, Products.description, Products.specifications, Products.colors, Products.warranty FROM Cart LEFT OUTER JOIN Products ON Cart.pid = Products.Id"></asp:SqlDataSource>
        
        
    </div>
</asp:Content>
