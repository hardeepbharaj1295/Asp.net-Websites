<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="viewstumsg.aspx.cs" Inherits="viewstumsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
        </Columns>


    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [message] FROM [sendmsg] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="Student" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

