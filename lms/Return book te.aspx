<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.master" AutoEventWireup="true" CodeFile="Return book te.aspx.cs" Inherits="Return_book_te" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">RETURN BOOKS</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    Book id<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
                                        rquired placeholder=" " Width="400px"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label>Roll Number</label>
                                    
         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                                    
                                </div>

                                <div>
                                    
                                </div>
                                 <asp:Button ID="Button2" runat="server" Text="RETURN" 
                                    class="btn btn-success btn-lg float-right" onclick="Button2_Click" 
                                    />
                                
                            </form>
                        </div>
                        <!--/card-block-->
                    </div>
                    <!-- /form card login -->

                </div>

        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
                    AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
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
        </asp:GridView>
                

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [teacher_issue] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [teacher_issue] ([bookid], [rollno], [issue_date], [return_date], [fine]) VALUES (@bookid, @rollno, @issue_date, @return_date, @fine)" 
                    SelectCommand="SELECT * FROM [teacher_issue] WHERE (([bookid] = @bookid) AND ([rollno] = @rollno)) ORDER BY [id] DESC" 
                    UpdateCommand="UPDATE [teacher_issue] SET [bookid] = @bookid, [rollno] = @rollno, [issue_date] = @issue_date, [return_date] = @return_date, [fine] = @fine WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="bookid" Type="String" />
                        <asp:Parameter Name="rollno" Type="String" />
                        <asp:Parameter Name="issue_date" Type="String" />
                        <asp:Parameter Name="return_date" Type="String" />
                        <asp:Parameter Name="fine" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="bookid" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="rollno" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bookid" Type="String" />
                        <asp:Parameter Name="rollno" Type="String" />
                        <asp:Parameter Name="issue_date" Type="String" />
                        <asp:Parameter Name="return_date" Type="String" />
                        <asp:Parameter Name="fine" Type="String" />
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

