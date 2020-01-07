<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-10">
                        <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">Search Book</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    ROLL No
                                   
     <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" rquired placeholder=" enter your rollno" 
                                        Width="420px"></asp:TextBox>

                                </div>
                                <asp:Button ID="Button2" runat="server" Text="RETURN" 
                                    class="btn btn-success btn-lg float-right"
                                    />
                            </form>
                            
                        </div>
                    </div>
                    <br />
                            <br />
                            <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" 
                                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="bookid" HeaderText="bookid" 
                                        SortExpression="bookid" />
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
                                SelectCommand="SELECT * FROM [book_issue] WHERE ([rollno] = @rollno)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="rollno" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <br /> <br />
                            <asp:GridView CssClass="table table-responsive" ID="GridView2" runat="server" 
                                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                                DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
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
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [teacher_issue] WHERE ([rollno] = @rollno)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="rollno" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

