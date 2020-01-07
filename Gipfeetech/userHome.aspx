<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="userHome.aspx.cs" Inherits="userHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="row">
        <br /><br />
        <div class="container">
            <h2>Welcome : <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#FF3300"></asp:Label></h2>
            <br /><br />
            <div class="col-md-8 col-md-offset-2">
                <h1 style="font-family:'Times New Roman'">Notifications....</h1><hr /><br /><br />
                
                    <asp:GridView ID="GridView1" class="table table-responsive table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="message" HeaderText="Messages" SortExpression="message" />
                        </Columns>

                        <EditRowStyle BackColor="#999999" />

                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                    </asp:GridView>
         
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notification] ORDER BY [Id] DESC"></asp:SqlDataSource>
         <br /><br />
                <h1 style="font-family:'Times New Roman'">Payment Status....</h1><hr /><br /><br />
                <asp:GridView ID="GridView2" CssClass="table table-responsive table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                        <asp:BoundField DataField="pay" HeaderText="Payment Pay" SortExpression="pay" />
                        <asp:BoundField DataField="pending" HeaderText="Payment Pending" SortExpression="pending" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PayStatus] WHERE ([studentid] = @studentid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="studentid" SessionField="userid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
        </div>
    </div>
</asp:Content>

