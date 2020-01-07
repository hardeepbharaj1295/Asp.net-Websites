<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Rec.aspx.cs" Inherits="admin_Rec" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="container">
<br />
<br />
<h1>Rechare Perfoma</h1>
<br />
<br />
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-condensed" 
        runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="number" HeaderText="number" 
                SortExpression="number" />
            <asp:BoundField DataField="amnt" HeaderText="amnt" SortExpression="amnt" />
            <asp:BoundField DataField="account" HeaderText="account" 
                SortExpression="account" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [recharge] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [recharge] ([type], [name], [number], [amnt], [account]) VALUES (@type, @name, @number, @amnt, @account)" 
        SelectCommand="SELECT * FROM [recharge]" 
        UpdateCommand="UPDATE [recharge] SET [type] = @type, [name] = @name, [number] = @number, [amnt] = @amnt, [account] = @account WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="number" Type="String" />
            <asp:Parameter Name="amnt" Type="String" />
            <asp:Parameter Name="account" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="number" Type="String" />
            <asp:Parameter Name="amnt" Type="String" />
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
    </form>
</asp:Content>

