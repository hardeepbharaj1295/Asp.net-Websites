<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewcmpny.aspx.cs" Inherits="viewcmpny" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



  <center><h2>Company Details:</h2>
  <div>
      
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-hover"
          DataKeyNames="id" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                  ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="Company_name" HeaderText="Company_name" 
                  SortExpression="Company_name" />
              <asp:BoundField DataField="Address" HeaderText="Address" 
                  SortExpression="Address" />
              <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
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
              <asp:BoundField DataField="User_name" HeaderText="User_name" 
                  SortExpression="User_name" />
              <asp:BoundField DataField="Password" HeaderText="Password" 
                  SortExpression="Password" />
              <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
          </Columns>
      </asp:GridView>


      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          SelectCommand="SELECT [id], [Company_name], [Address], [City], [Pincode], [Contact_person_name], [Mobile_no], [Contact_number], [Company_website], [User_name], [Password], [State] FROM [companyregi]">
      </asp:SqlDataSource>
      
  </div></center>



</asp:Content>

