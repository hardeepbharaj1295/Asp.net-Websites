<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="applyjobs.aspx.cs" Inherits="applyjobs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br /><br />
        <center><h1>Appiled Jobs</h1>
       
        <img src="pics/apply.png" style="width:300px" />
        <br /><br /><br />
        </center>
        <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
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
                <asp:BoundField DataField="cmpnyid" HeaderText="cmpnyid" 
                    SortExpression="cmpnyid" />
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
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
            InsertCommand="INSERT INTO [addedu] ([college_name], [enrollno], [semester], [branch], [passing_year], [skill], [extra_skill], [resume], [cmpnyid], [stuid]) VALUES (@college_name, @enrollno, @semester, @branch, @passing_year, @skill, @extra_skill, @resume, @cmpnyid, @stuid)" 
            SelectCommand="SELECT * FROM [addedu] WHERE ([stuid] = @stuid)" 
            UpdateCommand="UPDATE [addedu] SET [college_name] = @college_name, [enrollno] = @enrollno, [semester] = @semester, [branch] = @branch, [passing_year] = @passing_year, [skill] = @skill, [extra_skill] = @extra_skill, [resume] = @resume, [cmpnyid] = @cmpnyid, [stuid] = @stuid WHERE [id] = @id">
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
                <asp:Parameter Name="cmpnyid" Type="String" />
                <asp:Parameter Name="stuid" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="stuid" SessionField="Student" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="college_name" Type="String" />
                <asp:Parameter Name="enrollno" Type="String" />
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="branch" Type="String" />
                <asp:Parameter Name="passing_year" Type="String" />
                <asp:Parameter Name="skill" Type="String" />
                <asp:Parameter Name="extra_skill" Type="String" />
                <asp:Parameter Name="resume" Type="String" />
                <asp:Parameter Name="cmpnyid" Type="String" />
                <asp:Parameter Name="stuid" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <br />
    <br />
</asp:Content>

