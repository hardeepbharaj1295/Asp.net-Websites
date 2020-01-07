<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewstudent.aspx.cs" Inherits="viewstudent" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<center><center><h1 style="font-family:Times New Roman"> Student Details:</h1></center>
<br /><br />
<div  class="container">
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  class="table table-hover"
        DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" 
                SortExpression="Email_ID" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Mobile_no" HeaderText="Mobile_no" 
                SortExpression="Mobile_no" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Pin_code" HeaderText="Pin_code" 
                SortExpression="Pin_code" />
            <asp:BoundField DataField="First_name" HeaderText="First_name" 
                SortExpression="First_name" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id], [Username], [Email_ID], [Gender], [Mobile_no], [Password], [City], [Address], [Pin_code], [First_name], [State] FROM [sturegi]">
    </asp:SqlDataSource>
</div> </center>
</asp:Content>

