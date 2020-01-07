<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="BookList.aspx.cs" Inherits="admin_BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="col-md-10 col-md-offset-1">
    <h1>Booking Table List</h1>
    <br /><br />
    <asp:GridView ID="GridView1" 
        CssClass="table table-responsive table-condensed table-bordered" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="jwelid" HeaderText="jwelid" 
                SortExpression="jwelid" />
            <asp:BoundField DataField="jwelname" HeaderText="jwelname" 
                SortExpression="jwelname" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="userid" HeaderText="userid" 
                SortExpression="userid" />
            <asp:BoundField DataField="userno" HeaderText="userno" 
                SortExpression="userno" />
            <asp:BoundField DataField="useraddress" HeaderText="useraddress" 
                SortExpression="useraddress" />
            <asp:BoundField DataField="bank" HeaderText="bank" SortExpression="bank" />
            <asp:BoundField DataField="accountno" HeaderText="accountno" 
                SortExpression="accountno" />
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
        DeleteCommand="DELETE FROM [Booking] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Booking] ([jwelid], [jwelname], [price], [userid], [userno], [useraddress], [bank], [accountno]) VALUES (@jwelid, @jwelname, @price, @userid, @userno, @useraddress, @bank, @accountno)" 
        SelectCommand="SELECT * FROM [Booking]" 
        UpdateCommand="UPDATE [Booking] SET [jwelid] = @jwelid, [jwelname] = @jwelname, [price] = @price, [userid] = @userid, [userno] = @userno, [useraddress] = @useraddress, [bank] = @bank, [accountno] = @accountno WHERE [id] = @id">
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
            <asp:Parameter Name="bank" Type="String" />
            <asp:Parameter Name="accountno" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="jwelid" Type="String" />
            <asp:Parameter Name="jwelname" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="userno" Type="String" />
            <asp:Parameter Name="useraddress" Type="String" />
            <asp:Parameter Name="bank" Type="String" />
            <asp:Parameter Name="accountno" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
    </form>
</asp:Content>

