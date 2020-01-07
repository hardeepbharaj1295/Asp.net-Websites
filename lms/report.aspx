<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-10">
                     <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
                         AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" 
                         DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                 ReadOnly="True" SortExpression="id" />
                             <asp:BoundField DataField="bookid" HeaderText="bookid" 
                                 SortExpression="bookid" />
                             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                             <asp:BoundField DataField="rollno" HeaderText="rollno" 
                                 SortExpression="rollno" />
                             <asp:BoundField DataField="issue_date" HeaderText="issue_date" 
                                 SortExpression="issue_date" />
                             <asp:BoundField DataField="return_date" HeaderText="return_date" 
                                 SortExpression="return_date" />
                             <asp:BoundField DataField="fine" HeaderText="fine" SortExpression="fine" />
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
                         DeleteCommand="DELETE FROM [teacher_issue] WHERE [id] = @id" 
                         InsertCommand="INSERT INTO [teacher_issue] ([bookid], [email], [rollno], [issue_date], [return_date], [fine]) VALUES (@bookid, @email, @rollno, @issue_date, @return_date, @fine)" 
                         SelectCommand="SELECT * FROM [teacher_issue] WHERE ([email] = @email) ORDER BY [id] DESC" 
                         UpdateCommand="UPDATE [teacher_issue] SET [bookid] = @bookid, [email] = @email, [rollno] = @rollno, [issue_date] = @issue_date, [return_date] = @return_date, [fine] = @fine WHERE [id] = @id">
                         <DeleteParameters>
                             <asp:Parameter Name="id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="bookid" Type="String" />
                             <asp:Parameter Name="email" Type="String" />
                             <asp:Parameter Name="rollno" Type="String" />
                             <asp:Parameter Name="issue_date" Type="String" />
                             <asp:Parameter Name="return_date" Type="String" />
                             <asp:Parameter Name="fine" Type="String" />
                         </InsertParameters>
                         <SelectParameters>
                             <asp:SessionParameter Name="email" SessionField="teacherid" Type="String" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="bookid" Type="String" />
                             <asp:Parameter Name="email" Type="String" />
                             <asp:Parameter Name="rollno" Type="String" />
                             <asp:Parameter Name="issue_date" Type="String" />
                             <asp:Parameter Name="return_date" Type="String" />
                             <asp:Parameter Name="fine" Type="String" />
                             <asp:Parameter Name="id" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

