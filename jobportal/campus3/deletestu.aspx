<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="deletestu.aspx.cs" Inherits="deletestu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <br />
    <br />
    <br />
    <center>
        <h1>Your Account Details</h1>
    </center>
    <br />
    <br />
    <br />
    <br />
        <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="First_name" HeaderText="First_name" 
                    SortExpression="First_name" />
                <asp:BoundField DataField="Last_name" HeaderText="Last_name" 
                    SortExpression="Last_name" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" 
                    SortExpression="Email_ID" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="Mobile_no" HeaderText="Mobile_no" 
                    SortExpression="Mobile_no" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Pin_code" HeaderText="Pin_code" 
                    SortExpression="Pin_code" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [sturegi] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [sturegi] ([First_name], [Username], [Last_name], [Email_ID], [Gender], [Mobile_no], [Address], [City], [State], [Pin_code], [Password]) VALUES (@First_name, @Username, @Last_name, @Email_ID, @Gender, @Mobile_no, @Address, @City, @State, @Pin_code, @Password)" 
            SelectCommand="SELECT * FROM [sturegi] WHERE ([Username] = @Username)" 
            UpdateCommand="UPDATE [sturegi] SET [First_name] = @First_name, [Username] = @Username, [Last_name] = @Last_name, [Email_ID] = @Email_ID, [Gender] = @Gender, [Mobile_no] = @Mobile_no, [Address] = @Address, [City] = @City, [State] = @State, [Pin_code] = @Pin_code, [Password] = @Password WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="First_name" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Last_name" Type="String" />
                <asp:Parameter Name="Email_ID" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Mobile_no" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Pin_code" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="Student" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_name" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Last_name" Type="String" />
                <asp:Parameter Name="Email_ID" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Mobile_no" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Pin_code" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <br />
    <br />
    <br />
</asp:Content>

