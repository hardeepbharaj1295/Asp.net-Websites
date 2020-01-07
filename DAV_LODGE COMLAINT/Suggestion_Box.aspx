<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Suggestion_Box.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 1340px">
        <asp:Label ID="Label14" runat="server" ForeColor="#0033CC" 
            style="z-index: 1; left: 1102px; top: 132px; position: absolute" 
            Text="Label"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="z-index: 1; left: 1273px; top: 130px; position: absolute; font-style: italic; font-weight: 700; width: 68px; font-size: large">Log Out</asp:LinkButton>
    <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Name], [E_Mail_ID], [Contact_No], [Suggestions] FROM [Suggest]">
        </asp:SqlDataSource>
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            
            
            
            style="z-index: 1; left: 805px; top: 274px; position: absolute; height: 143px; width: 551px; border-width: 2px">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="E_Mail_ID" HeaderText="E_Mail_ID" 
                    SortExpression="E_Mail_ID" />
                <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" 
                    SortExpression="Contact_No" />
                <asp:BoundField DataField="Suggestions" HeaderText="Suggestions" 
                    SortExpression="Suggestions" />
            </Columns>
        </asp:GridView>
    <br />
<asp:Label ID="Label2" runat="server" Text="These Are List Of Suggestion Comming From User Views" 
        
        
            
            style="z-index: 1; left: 890px; top: 251px; position: absolute; width: 388px; font-weight: 700; font-style: italic;"></asp:Label>
    <br />
        <br />
    <asp:Label ID="Label4" runat="server" ForeColor="#009933" 
        style="z-index: 1; left: 935px; top: 202px; position: absolute; height: 29px; width: 290px; text-align: center; font-weight: 700; font-size: xx-large" 
        Text="Suggestion Box"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
</p>
    <script type="text/javascript">
    if (window.history.forward(1) != null)
        window.history.forward(1);
    </script>
</asp:Content>

