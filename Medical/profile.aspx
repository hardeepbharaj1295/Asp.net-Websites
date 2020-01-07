<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2 style="font-family:Times New Roman; text-align:center;">Your Profile</h2>
                <br /><br />
            <div class="container">
                <br />
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive"  AutoGenerateColumns="False" 
                    DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="mstatus" HeaderText="mstatus" 
                            SortExpression="mstatus" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                        <asp:CommandField AccessibleHeaderText="Edit" ShowEditButton="True" />
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
                    DeleteCommand="DELETE FROM [reg] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [reg] ([name], [email], [dob], [gender], [phone], [area], [city], [state], [mstatus], [password]) VALUES (@name, @email, @dob, @gender, @phone, @area, @city, @state, @mstatus, @password)" 
                    SelectCommand="SELECT * FROM [reg] WHERE ([id] = @id)" 
                    UpdateCommand="UPDATE [reg] SET [name] = @name, [email] = @email, [dob] = @dob, [gender] = @gender, [phone] = @phone, [area] = @area, [city] = @city, [state] = @state, [mstatus] = @mstatus, [password] = @password WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="area" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="mstatus" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="area" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="mstatus" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                
            </div>
</asp:Content>

