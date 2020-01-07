<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="view issue book.aspx.cs" Inherits="view_issue_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-10 mx-auto">

                    <!-- form card login -->
                    
                    <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
                        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None">
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
                        SelectCommand="SELECT * FROM [teacher_issue] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:SessionParameter Name="email" SessionField="teacherid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <!-- /form card login -->

                </div>


            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
<br /><br /><br /><br /><br /><br />

</asp:Content>

