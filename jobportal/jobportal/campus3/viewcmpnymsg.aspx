<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="viewcmpnymsg.aspx.cs" Inherits="viewcmpnymsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div style="padding:50px">
        
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
    SelectCommand="SELECT [message] FROM [smscmpny] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="Company" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

