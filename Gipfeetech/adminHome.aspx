<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminHome.aspx.cs" Inherits="adminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1"><br /><br />
                <h1 style="font-family:'Times New Roman'; text-align:center">Welcome to Admin Panel</h1><br /><br />
                <h1 style="font-family:'Times New Roman'">Notifications</h1><br /><br />
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">Add Notifications</div>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label ID="Label1" CssClass="control-label col-md-3" runat="server" Text="Messages"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-10 col-md-offset-3">
                                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Submit" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br /><br />
                <h1>Notification List</h1><br /><br />
                <asp:GridView ID="GridView1" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Notification] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Notification] ([message]) VALUES (@message)" SelectCommand="SELECT * FROM [Notification]" UpdateCommand="UPDATE [Notification] SET [message] = @message WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="message" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource><br /><br />
            </div>
        </div>
    </div>
</asp:Content>

