<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-12">

                 
                     <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
                         AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                         DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                 ReadOnly="True" SortExpression="id" />
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
                         SelectCommand="SELECT * FROM [add_books1]"></asp:SqlDataSource>

                </div>


            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
<br /><br /><br /><br /><br /><br />
</asp:Content>

