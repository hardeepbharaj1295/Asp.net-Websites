<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="BookList.aspx.cs" Inherits="admin_BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="col-md-10 col-md-offset-1">
    <h1>Booking Table List</h1>
    <br /><br />
    <asp:GridView ID="GridView1" 
        CssClass="table table-responsive table-condensed table-bordered" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="jwelid" HeaderText="Product ID" 
                SortExpression="jwelid" />
            <asp:BoundField DataField="jwelname" HeaderText="Product Name" 
                SortExpression="jwelname" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="userno" HeaderText="User no" 
                SortExpression="userno" />
            <asp:BoundField DataField="useraddress" HeaderText="User Address" 
                SortExpression="useraddress" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Booking] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Booking] ([jwelid], [jwelname], [price], [userid], [userno], [useraddress]) VALUES (@jwelid, @jwelname, @price, @userid, @userno, @useraddress)" 
        SelectCommand="SELECT * FROM [Booking]" 
        UpdateCommand="UPDATE [Booking] SET [jwelid] = @jwelid, [jwelname] = @jwelname, [price] = @price, [userid] = @userid, [userno] = @userno, [useraddress] = @useraddress WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="jwelid" Type="String" />
            <asp:Parameter Name="jwelname" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="userno" Type="String" />
            <asp:Parameter Name="useraddress" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="jwelid" Type="String" />
            <asp:Parameter Name="jwelname" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="userno" Type="String" />
            <asp:Parameter Name="useraddress" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
    </form>
</asp:Content>

