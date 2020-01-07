<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Studentdetail.aspx.cs" Inherits="Studentdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <br /><br />
        <div class="container">
            <div class="col-md-8 col-md-offset-2">
                <h1 style="font-family:'Times New Roman'">Student Details....</h1><hr /><br />
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="control-label col-md-3" runat="server" Text="Select Course"></asp:Label>
                    <div class="col-md-9">
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="course" DataValueField="course" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [course] FROM [Courses]"></asp:SqlDataSource>
                        <br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="control-label col-md-3" runat="server" Text="Enter Student Name"></asp:Label>
                    <div class="col-md-9">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="name" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [name] FROM [Register] WHERE ([course] = @course)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </div>
                </div>
                <asp:GridView ID="GridView1" CssClass="table table-responsive table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
                        <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Register] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Register] ([name], [email], [number], [course], [gender], [password]) VALUES (@name, @email, @number, @course, @gender, @password)" SelectCommand="SELECT * FROM [Register] WHERE (([course] = @course) AND ([name] = @name))" UpdateCommand="UPDATE [Register] SET [name] = @name, [email] = @email, [number] = @number, [course] = @course, [gender] = @gender, [password] = @password WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="number" Type="String" />
                        <asp:Parameter Name="course" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="name" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="number" Type="String" />
                        <asp:Parameter Name="course" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

