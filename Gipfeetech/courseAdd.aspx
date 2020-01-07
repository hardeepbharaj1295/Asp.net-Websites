<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="courseAdd.aspx.cs" Inherits="courseAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
         <div class="row">
        <div class="col-md-8 col-md-offset-2" style="margin-top:50px;">
            <h2 style="font-family:'Times New Roman'">Add New Courses </h2><br /><br />
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="panel-title">Corses</div>                   
                </div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <asp:Label ID="Label1" CssClass="col-md-3 control-label" runat="server" Text="Enter Course Name : "></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" required="required" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" CssClass="col-md-3 control-label" runat="server" Text="Enter Course Syllabus : "></asp:Label>
                            <div class="col-md-8">
                                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="Button1_Click" runat="server" Text="Submit" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           </div>  
         <br /><br />
             <div class="col-md-10 col-md-offset-1">
         <h2 style="font-family:'Times New Roman'; margin-top:50px;">Courses List</h2><br /><br />
                 <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="course" HeaderText="Course Name" SortExpression="course" />
                         <asp:BoundField DataField="download" HeaderText="Syllabus" SortExpression="download" />
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Courses] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Courses] ([course], [download]) VALUES (@course, @download)" SelectCommand="SELECT * FROM [Courses] ORDER BY [Id]" UpdateCommand="UPDATE [Courses] SET [course] = @course, [download] = @download WHERE [Id] = @Id">
                     <DeleteParameters>
                         <asp:Parameter Name="Id" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="course" Type="String" />
                         <asp:Parameter Name="download" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="course" Type="String" />
                         <asp:Parameter Name="download" Type="String" />
                         <asp:Parameter Name="Id" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
            <br /><br />
                 </div>
             
       </div>
    </div>
</asp:Content>

