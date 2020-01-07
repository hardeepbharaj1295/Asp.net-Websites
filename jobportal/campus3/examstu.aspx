<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="examstu.aspx.cs" Inherits="examstu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="padding-top:80px;padding-bottom:80px">
    <div>
        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
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
                <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
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

