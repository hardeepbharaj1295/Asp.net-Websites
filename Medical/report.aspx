<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
        <br /><br />
            
            <h2 style="font-family:Times New Roman; text-align:center;">Your Report</h2>
            <br /><br />
            <div class="container">
            <br /><br />
                <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="rbc" HeaderText="RBC" SortExpression="rbc" />
                        <asp:BoundField DataField="hct" HeaderText="HCT" SortExpression="hct" />
                        <asp:BoundField DataField="hgb" HeaderText="HGB" SortExpression="hgb" />
                        <asp:BoundField DataField="mcv" HeaderText="MCV" SortExpression="mcv" />
                        <asp:BoundField DataField="mch" HeaderText="MCH" SortExpression="mch" />
                        <asp:BoundField DataField="mchc" HeaderText="MCHC" SortExpression="mchc" />
                        <asp:BoundField DataField="rdw" HeaderText="RDW" SortExpression="rdw" />
                        <asp:BoundField DataField="wbc" HeaderText="WBC" SortExpression="wbc" />
                        <asp:BoundField DataField="plt" HeaderText="Plattes" SortExpression="plt" />
                        <asp:HyperLinkField DataNavigateUrlFields="report" DataTextField="report" 
                            HeaderText="Report" />
                        <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
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
                    DeleteCommand="DELETE FROM [Report] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Report] ([userid], [rbc], [hct], [hgb], [mcv], [mch], [mchc], [rdw], [wbc], [plt]) VALUES (@userid, @rbc, @hct, @hgb, @mcv, @mch, @mchc, @rdw, @wbc, @plt)" 
                    SelectCommand="SELECT * FROM [Report] WHERE ([userid] = @userid)" 
                    UpdateCommand="UPDATE [Report] SET [userid] = @userid, [rbc] = @rbc, [hct] = @hct, [hgb] = @hgb, [mcv] = @mcv, [mch] = @mch, [mchc] = @mchc, [rdw] = @rdw, [wbc] = @wbc, [plt] = @plt WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userid" Type="String" />
                        <asp:Parameter Name="rbc" Type="String" />
                        <asp:Parameter Name="hct" Type="String" />
                        <asp:Parameter Name="hgb" Type="String" />
                        <asp:Parameter Name="mcv" Type="String" />
                        <asp:Parameter Name="mch" Type="String" />
                        <asp:Parameter Name="mchc" Type="String" />
                        <asp:Parameter Name="rdw" Type="String" />
                        <asp:Parameter Name="wbc" Type="String" />
                        <asp:Parameter Name="plt" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="id" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userid" Type="String" />
                        <asp:Parameter Name="rbc" Type="String" />
                        <asp:Parameter Name="hct" Type="String" />
                        <asp:Parameter Name="hgb" Type="String" />
                        <asp:Parameter Name="mcv" Type="String" />
                        <asp:Parameter Name="mch" Type="String" />
                        <asp:Parameter Name="mchc" Type="String" />
                        <asp:Parameter Name="rdw" Type="String" />
                        <asp:Parameter Name="wbc" Type="String" />
                        <asp:Parameter Name="plt" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br /><br />
            </div>
            <br /><br />
    </div>
</asp:Content>

