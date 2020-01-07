<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1"><br /><br />
                <h1 style="font-family:'Times New Roman'">Messages</h1><br /><br />
                <asp:GridView ID="GridView1" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="telephone" HeaderText="telephone" SortExpression="telephone" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Contact] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contact] ([name], [email], [telephone], [message]) VALUES (@name, @email, @telephone, @message)" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [name] = @name, [email] = @email, [telephone] = @telephone, [message] = @message WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="telephone" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="telephone" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource><br /><br />
            </div>
        </div>
    </div>
</asp:Content>

