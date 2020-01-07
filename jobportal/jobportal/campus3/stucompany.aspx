<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="stucompany.aspx.cs" Inherits="stucompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="padding-top:80px;padding-bottom:80px">
        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Cmpny_name" HeaderText="Cmpny_name" 
                    SortExpression="Cmpny_name" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:BoundField DataField="Min_qual" HeaderText="Min_qual" 
                    SortExpression="Min_qual" />
                <asp:BoundField DataField="Required_skills" HeaderText="Required_skills" 
                    SortExpression="Required_skills" />
                <asp:BoundField DataField="Max_age" HeaderText="Max_age" 
                    SortExpression="Max_age" />
                <asp:BoundField DataField="Job_loc" HeaderText="Job_loc" 
                    SortExpression="Job_loc" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" 
                    SortExpression="Salary" />
                <asp:BoundField DataField="Working_hour" HeaderText="Working_hour" 
                    SortExpression="Working_hour" />
                <asp:BoundField DataField="Last_apply_date" HeaderText="Last_apply_date" 
                    SortExpression="Last_apply_date" />
                <asp:CommandField ShowSelectButton="True" />
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
            DeleteCommand="DELETE FROM [postjob] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [postjob] ([Cmpny_name], [Category], [Role], [Min_qual], [Required_skills], [Max_age], [Job_loc], [Salary], [Working_hour], [Last_apply_date]) VALUES (@Cmpny_name, @Category, @Role, @Min_qual, @Required_skills, @Max_age, @Job_loc, @Salary, @Working_hour, @Last_apply_date)" 
            SelectCommand="SELECT * FROM [postjob] ORDER BY [id] DESC" 
            UpdateCommand="UPDATE [postjob] SET [Cmpny_name] = @Cmpny_name, [Category] = @Category, [Role] = @Role, [Min_qual] = @Min_qual, [Required_skills] = @Required_skills, [Max_age] = @Max_age, [Job_loc] = @Job_loc, [Salary] = @Salary, [Working_hour] = @Working_hour, [Last_apply_date] = @Last_apply_date WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Cmpny_name" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Min_qual" Type="String" />
                <asp:Parameter Name="Required_skills" Type="String" />
                <asp:Parameter Name="Max_age" Type="String" />
                <asp:Parameter Name="Job_loc" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="Working_hour" Type="String" />
                <asp:Parameter Name="Last_apply_date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Cmpny_name" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Min_qual" Type="String" />
                <asp:Parameter Name="Required_skills" Type="String" />
                <asp:Parameter Name="Max_age" Type="String" />
                <asp:Parameter Name="Job_loc" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="Working_hour" Type="String" />
                <asp:Parameter Name="Last_apply_date" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

