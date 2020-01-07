<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Testimonials.aspx.cs" Inherits="admin_Testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<br /><br />
<div class="col-md-10 col-md-offset-1">
    <h1>Contact List</h1><br />

    <asp:GridView CssClass="table table-responsive table-condensed" ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="subject" HeaderText="Subject" 
                SortExpression="subject" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="message" HeaderText="Message" 
                SortExpression="message" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Contact] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Contact] ([name], [subject], [email], [message]) VALUES (@name, @subject, @email, @message)" 
        SelectCommand="SELECT * FROM [Contact]" 
        UpdateCommand="UPDATE [Contact] SET [name] = @name, [subject] = @subject, [email] = @email, [message] = @message WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="message" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
    </form>
</asp:Content>

