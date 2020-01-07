<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="admin_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <br />
    <br />
    <h1>Details</h1>
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" 
        CssClass="table table-bordered table-bordered" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Shop Name" SortExpression="name" />
            <asp:ImageField DataImageUrlField="photo" HeaderText="Image">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:BoundField DataField="price" HeaderText="Conatct" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" />
            <asp:BoundField DataField="userid" HeaderText="Userid" 
                SortExpression="userid" />
            <asp:BoundField DataField="userno" HeaderText="Userno" 
                SortExpression="userno" />
            <asp:BoundField DataField="request" HeaderText="request" 
                SortExpression="request" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Products] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Products] ([name], [photo], [type], [price], [description], [userid], [userno], [request]) VALUES (@name, @photo, @type, @price, @description, @userid, @userno, @request)" 
        SelectCommand="SELECT * FROM [Products]" 
        UpdateCommand="UPDATE [Products] SET [name] = @name, [photo] = @photo, [type] = @type, [price] = @price, [description] = @description, [userid] = @userid, [userno] = @userno, [request] = @request WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="userno" Type="String" />
            <asp:Parameter Name="request" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="userno" Type="String" />
            <asp:Parameter Name="request" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</form>

</asp:Content>

