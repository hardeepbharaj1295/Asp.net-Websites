<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Book search.aspx.cs" Inherits="Book_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                    
                    <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
                        AutoGenerateColumns="False" DataKeyNames="id" 
                        DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="bookid" HeaderText="bookid" 
                                SortExpression="bookid" />
                            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField DataField="authorname" HeaderText="authorname" 
                                SortExpression="authorname" />
                            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                                SortExpression="publisher" />
                            <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                            <asp:BoundField DataField="quanity" HeaderText="quanity" 
                                SortExpression="quanity" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                        DeleteCommand="DELETE FROM [add_books1] WHERE [id] = @id" 
                        InsertCommand="INSERT INTO [add_books1] ([bookid], [title], [authorname], [publisher], [cost], [quanity]) VALUES (@bookid, @title, @authorname, @publisher, @cost, @quanity)" 
                        SelectCommand="SELECT * FROM [add_books1]" 
                        UpdateCommand="UPDATE [add_books1] SET [bookid] = @bookid, [title] = @title, [authorname] = @authorname, [publisher] = @publisher, [cost] = @cost, [quanity] = @quanity WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="bookid" Type="String" />
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="authorname" Type="String" />
                            <asp:Parameter Name="publisher" Type="String" />
                            <asp:Parameter Name="cost" Type="Int32" />
                            <asp:Parameter Name="quanity" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="bookid" Type="String" />
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="authorname" Type="String" />
                            <asp:Parameter Name="publisher" Type="String" />
                            <asp:Parameter Name="cost" Type="Int32" />
                            <asp:Parameter Name="quanity" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
<br /><br /><br /><br /><br /><br />

</asp:Content>

