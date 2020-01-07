<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="accountcmp.aspx.cs" Inherits="accountcmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="container">
    <br />
    <br />
    <br />
    <center>
        <h1>Your Account Details</h1>
    </center>
    <br />
    <br />
    <br />
    <br />
       <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" 
           AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
           DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:BoundField DataField="Company_name" HeaderText="Company_name" 
                   SortExpression="Company_name" />
               <asp:BoundField DataField="Address" HeaderText="Address" 
                   SortExpression="Address" />
               <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
               <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
               <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                   SortExpression="Pincode" />
               <asp:BoundField DataField="Contact_person_name" 
                   HeaderText="Contact_person_name" SortExpression="Contact_person_name" />
               <asp:BoundField DataField="Mobile_no" HeaderText="Mobile_no" 
                   SortExpression="Mobile_no" />
               <asp:BoundField DataField="Contact_number" HeaderText="Contact_number" 
                   SortExpression="Contact_number" />
               <asp:BoundField DataField="Company_website" HeaderText="Company_website" 
                   SortExpression="Company_website" />
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
           DeleteCommand="DELETE FROM [companyregi] WHERE [id] = @id" 
           InsertCommand="INSERT INTO [companyregi] ([Company_name], [Address], [City], [State], [Pincode], [Contact_person_name], [Mobile_no], [Contact_number], [Company_website], [User_name], [Password]) VALUES (@Company_name, @Address, @City, @State, @Pincode, @Contact_person_name, @Mobile_no, @Contact_number, @Company_website, @User_name, @Password)" 
           SelectCommand="SELECT * FROM [companyregi] WHERE ([User_name] = @User_name)" 
           UpdateCommand="UPDATE [companyregi] SET [Company_name] = @Company_name, [Address] = @Address, [City] = @City, [State] = @State, [Pincode] = @Pincode, [Contact_person_name] = @Contact_person_name, [Mobile_no] = @Mobile_no, [Contact_number] = @Contact_number, [Company_website] = @Company_website, [User_name] = @User_name, [Password] = @Password WHERE [id] = @id">
           <DeleteParameters>
               <asp:Parameter Name="id" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="Company_name" Type="String" />
               <asp:Parameter Name="Address" Type="String" />
               <asp:Parameter Name="City" Type="String" />
               <asp:Parameter Name="State" Type="String" />
               <asp:Parameter Name="Pincode" Type="String" />
               <asp:Parameter Name="Contact_person_name" Type="String" />
               <asp:Parameter Name="Mobile_no" Type="String" />
               <asp:Parameter Name="Contact_number" Type="String" />
               <asp:Parameter Name="Company_website" Type="String" />
               <asp:Parameter Name="User_name" Type="String" />
               <asp:Parameter Name="Password" Type="String" />
           </InsertParameters>
           <SelectParameters>
               <asp:SessionParameter Name="User_name" SessionField="Company" Type="String" />
           </SelectParameters>
           <UpdateParameters>
               <asp:Parameter Name="Company_name" Type="String" />
               <asp:Parameter Name="Address" Type="String" />
               <asp:Parameter Name="City" Type="String" />
               <asp:Parameter Name="State" Type="String" />
               <asp:Parameter Name="Pincode" Type="String" />
               <asp:Parameter Name="Contact_person_name" Type="String" />
               <asp:Parameter Name="Mobile_no" Type="String" />
               <asp:Parameter Name="Contact_number" Type="String" />
               <asp:Parameter Name="Company_website" Type="String" />
               <asp:Parameter Name="User_name" Type="String" />
               <asp:Parameter Name="Password" Type="String" />
               <asp:Parameter Name="id" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
    </div>
     <br />
    <br />
    <br />
    <br />
</asp:Content>

