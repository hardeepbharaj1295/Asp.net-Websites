<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Android.aspx.cs" Inherits="ShoppingCart.Android" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12" style="padding:25px;">
        
        <div runat="server" id="message"></div>
       <%-- 
    	<table class="table table-responsive table-bordered">
            
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
         </table>--%>

        <div class="form-group col-md-6">
            
            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True">
                <asp:ListItem>Android</asp:ListItem>
                <asp:ListItem>Ios</asp:ListItem>
            </asp:DropDownList>

        </div>

        <asp:GridView ID="GridView1" CssClass="table table-responsive table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Product Image" SortExpression="image">
                    <ControlStyle Height="250px" Width="200px" />
                </asp:ImageField>
                <asp:BoundField DataField="cost" HeaderText="Product Cost" SortExpression="cost" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:BoundField DataField="specifications" HeaderText="Specifications" SortExpression="specifications" HtmlEncode="False" />
                <asp:BoundField DataField="colors" HeaderText="Colors / Warranty" SortExpression="colors" HtmlEncode="False" />
                <asp:CommandField HeaderText="Add To Cart" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
   
        
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([type] = @type)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="type" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
   
        
   
    </div>
</asp:Content>
