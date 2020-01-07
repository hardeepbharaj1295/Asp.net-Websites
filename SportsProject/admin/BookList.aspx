<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="BookList.aspx.cs" Inherits="admin_BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <div class="col-md-10 col-md-offset-1">
        <h1>Booking Table List</h1>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" 
            CssClass="table table-responsive table-condensed table-bordered" 
            AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="OrderID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="username" HeaderText="Customer Name" 
                    SortExpression="username" />
                <asp:BoundField DataField="userno" HeaderText="Customer Number" 
                    SortExpression="userno" />
                <asp:BoundField DataField="useradress" HeaderText="Customer Address" 
                    SortExpression="useradress" />
                <asp:BoundField DataField="totalproducts" HeaderText="Total Products" 
                    SortExpression="totalproducts" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" 
                    SortExpression="totalprice" />
                <asp:CommandField HeaderText="View Order Products" ShowSelectButton="True" 
                    SortExpression="id" />
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [booking] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [booking] ([userid], [username], [userno], [useradress], [totalproducts], [orderid], [totalprice]) VALUES (@userid, @username, @userno, @useradress, @totalproducts, @orderid, @totalprice)" 
            SelectCommand="SELECT * FROM [booking]" 
            UpdateCommand="UPDATE [booking] SET [userid] = @userid, [username] = @username, [userno] = @userno, [useradress] = @useradress, [totalproducts] = @totalproducts, [orderid] = @orderid, [totalprice] = @totalprice WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="userno" Type="String" />
                <asp:Parameter Name="useradress" Type="String" />
                <asp:Parameter Name="totalproducts" Type="String" />
                <asp:Parameter Name="orderid" Type="String" />
                <asp:Parameter Name="totalprice" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="userno" Type="String" />
                <asp:Parameter Name="useradress" Type="String" />
                <asp:Parameter Name="totalproducts" Type="String" />
                <asp:Parameter Name="orderid" Type="String" />
                <asp:Parameter Name="totalprice" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />

        <asp:GridView ID="GridView2" CssClass="table table-responsive table-condensed table-bordered" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="OrderID" 
                    SortExpression="orderid" />
                <asp:BoundField DataField="productname" HeaderText="Product Name" 
                    SortExpression="productname" />
                <asp:ImageField DataImageUrlField="p_image" HeaderText="Product Image">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="p_price" HeaderText="Product Price" 
                    SortExpression="p_price" />
                <asp:BoundField DataField="description" HeaderText="Description" 
                    SortExpression="description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ordertable] WHERE ([orderid] = @orderid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="orderid" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</form>
</asp:Content>

