<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="examstu.aspx.cs" Inherits="examstu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="padding-top:80px;padding-bottom:80px">
    <div>
        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="college_name" HeaderText="college_name" 
                    SortExpression="college_name" />
                <asp:BoundField DataField="enrollno" HeaderText="enrollno" 
                    SortExpression="enrollno" />
                <asp:BoundField DataField="semester" HeaderText="semester" 
                    SortExpression="semester" />
                <asp:BoundField DataField="branch" HeaderText="branch" 
                    SortExpression="branch" />
                <asp:BoundField DataField="passing_year" HeaderText="passing_year" 
                    SortExpression="passing_year" />
                <asp:BoundField DataField="skill" HeaderText="skill" SortExpression="skill" />
                <asp:BoundField DataField="extra_skill" HeaderText="extra_skill" 
                    SortExpression="extra_skill" />
                <asp:BoundField DataField="resume" HeaderText="resume" 
                    SortExpression="resume" />
                <asp:HyperLinkField DataNavigateUrlFields="resume" HeaderText="Resume" 
                    DataTextField="resume" />
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
            DeleteCommand="DELETE FROM [addedu] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [addedu] ([college_name], [enrollno], [semester], [branch], [passing_year], [skill], [extra_skill], [resume]) VALUES (@college_name, @enrollno, @semester, @branch, @passing_year, @skill, @extra_skill, @resume)" 
            SelectCommand="SELECT * FROM [addedu] ORDER BY [id] DESC" 
            UpdateCommand="UPDATE [addedu] SET [college_name] = @college_name, [enrollno] = @enrollno, [semester] = @semester, [branch] = @branch, [passing_year] = @passing_year, [skill] = @skill, [extra_skill] = @extra_skill, [resume] = @resume WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="college_name" Type="String" />
                <asp:Parameter Name="enrollno" Type="String" />
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="branch" Type="String" />
                <asp:Parameter Name="passing_year" Type="String" />
                <asp:Parameter Name="skill" Type="String" />
                <asp:Parameter Name="extra_skill" Type="String" />
                <asp:Parameter Name="resume" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="college_name" Type="String" />
                <asp:Parameter Name="enrollno" Type="String" />
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="branch" Type="String" />
                <asp:Parameter Name="passing_year" Type="String" />
                <asp:Parameter Name="skill" Type="String" />
                <asp:Parameter Name="extra_skill" Type="String" />
                <asp:Parameter Name="resume" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

