<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="PayStatus.aspx.cs" Inherits="PayStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1"><br /><br />
                <h1 style="font-family:'Times New Roman'">Payment Status</h1><br /><br />
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">Student Payment Status</div>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label ID="Label1" CssClass="control-label col-md-3" runat="server" Text="Select Course"></asp:Label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" DataTextField="course" DataValueField="course" DataSourceID="SqlDataSource1"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [course] FROM [PayStatus]"></asp:SqlDataSource>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-10 col-md-offset-1">
                <h1>Student List</h1><br /><br /><br /><br />
                    <asp:GridView ID="GridView1" CssClass="table table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="name" HeaderText="Student Name" SortExpression="name" />
                            <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                            <asp:BoundField DataField="pay" HeaderText="Pay Fees" SortExpression="pay" />
                            <asp:BoundField DataField="pending" HeaderText="Pending Fees" SortExpression="pending" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PayStatus] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PayStatus] ([studentid], [name], [course], [pay], [pending]) VALUES (@studentid, @name, @course, @pay, @pending)" SelectCommand="SELECT * FROM [PayStatus] WHERE ([course] = @course)" UpdateCommand="UPDATE [PayStatus] SET [studentid] = @studentid, [name] = @name, [course] = @course, [pay] = @pay, [pending] = @pending WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="studentid" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="course" Type="String" />
                            <asp:Parameter Name="pay" Type="String" />
                            <asp:Parameter Name="pending" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="studentid" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="course" Type="String" />
                            <asp:Parameter Name="pay" Type="String" />
                            <asp:Parameter Name="pending" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

