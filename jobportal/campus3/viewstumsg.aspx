<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="viewstumsg.aspx.cs" Inherits="viewstumsg" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <br />
    <br />
        <center><h1 style="font-family:Times New Roman;">Company Messages</h1>
            <img src="pics/message.png" width="50%" />

      
        <br /><br />
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="company" HeaderText="Sender" 
                        SortExpression="company" />
                    <asp:BoundField DataField="message" HeaderText="message" 
                        SortExpression="message" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
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
                SelectCommand="SELECT * FROM [smscmpny] WHERE ([username] = @username) ORDER BY [id] DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="Student" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

          </center>
    </div>
</asp:Content>

