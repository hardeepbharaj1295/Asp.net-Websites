<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="courseDetail.aspx.cs" Inherits="courseDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row">
        <br /><br />
        <div class="container">
            <div class="col-md-8 col-md-offset-2">
                <h2 style="font-family:'Times New Roman'">Course Detail....</h2><br /><br />
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">About Course</div>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-3 control-label" Text="Select Course"></asp:Label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="course" DataValueField="course"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [course] FROM [Courses] ORDER BY [Id]"></asp:SqlDataSource>
                            </div>
                        </div>
                       <div class="form-group">
                           <asp:Label ID="Label2" runat="server" CssClass="col-md-3 control-label" Text="Enter Course Fee"></asp:Label>
                           <div class="col-md-8">
                               <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                       </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary" Text="Submit" />
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                </div>
                
            <div class="col-md-10 col-md-offset-1"><br /><br /><br /><br />
                <h2 style="font-family:'Times New Roman'">Course Fee Detail</h2><br /><br />
                <asp:GridView ID="GridView1" CssClass="table table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="course" HeaderText="Course Name" SortExpression="course" />
                        <asp:BoundField DataField="fees" HeaderText="Course Fees" SortExpression="fees" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CourseFees] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CourseFees] ([course], [fees]) VALUES (@course, @fees)" SelectCommand="SELECT * FROM [CourseFees]" UpdateCommand="UPDATE [CourseFees] SET [course] = @course, [fees] = @fees WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="course" Type="String" />
                        <asp:Parameter Name="fees" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="course" Type="String" />
                        <asp:Parameter Name="fees" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

