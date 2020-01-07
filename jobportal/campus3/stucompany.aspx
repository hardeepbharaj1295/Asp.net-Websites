<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="stucompany.aspx.cs" Inherits="stucompany" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
    <center><h1 style="font-family:Times New Roman"> Apply Job:</h1>

<img src="pics/job.png" style="width:300px" /></center>

    <div class="container" style="padding-top:80px;padding-bottom:80px">
    <div class="row">
        <div class="form-group">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" width="400" DataTextField="Category" 
                    DataValueField="Category">
                </asp:DropDownList>

                <asp:DropDownList ID="DropDownList2" width="400px"  runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Salary" DataValueField="Salary">
                </asp:DropDownList>
          

            
          

            
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Salary] FROM [postjob] WHERE ([Category] = @Category)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Category" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
          

            
          

            
         </div>
    </div>
    

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Category] FROM [postjob]"></asp:SqlDataSource>

        <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
        <br />
        <br />
        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Cmpny_name" HeaderText="Cmpny_name" 
                    SortExpression="Cmpny_name" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:BoundField DataField="Min_qual" HeaderText="Min_qual" 
                    SortExpression="Min_qual" />
                <asp:BoundField DataField="Required_skills" HeaderText="Required_skills" 
                    SortExpression="Required_skills" />
                <asp:BoundField DataField="Max_age" HeaderText="Max_age" 
                    SortExpression="Max_age" />
                <asp:BoundField DataField="Job_loc" HeaderText="Job_loc" 
                    SortExpression="Job_loc" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" 
                    SortExpression="Salary" />
                <asp:BoundField DataField="Last_apply_date" HeaderText="Last_apply_date" 
                    SortExpression="Last_apply_date" />
                <asp:CommandField HeaderText="Apply" ShowSelectButton="True" />
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
            SelectCommand="SELECT * FROM [postjob] WHERE ([Category] = @Category) ORDER BY [id] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Category" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

