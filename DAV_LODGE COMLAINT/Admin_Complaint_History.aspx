<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_Complaint_History.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    <asp:Label ID="Label4" runat="server" ForeColor="#009933" 
        style="z-index: 1; left: 944px; top: 202px; position: absolute; height: 29px; width: 290px; text-align: center; font-weight: 700; font-size: xx-large" 
        Text="Complaint History"></asp:Label>
        <br />
        <br />
<asp:Label ID="Label2" runat="server" Text="These Are Complete Historical List Of Complants" 
        
        
            style="z-index: 1; left: 921px; top: 250px; position: absolute; width: 337px; font-weight: 700; font-style: italic;"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="z-index: 1; left: 1273px; top: 130px; position: absolute; font-style: italic; font-weight: 700; width: 68px; font-size: large">Log Out</asp:LinkButton>
        <br />
        <asp:Label ID="Label14" runat="server" ForeColor="#0033CC" 
            style="z-index: 1; left: 1102px; top: 132px; position: absolute" 
            Text="Label"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Complaint_No], [Complaint_Date], [Complaint_Type], [Complaint_Sub_Type], [Detail_Of_Complaint] FROM [Complaint_Form1]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Complaint_No" DataSourceID="SqlDataSource1" 
            style="z-index: 1; left: 739px; top: 282px; position: absolute; height: 133px; width: 597px">
            <Columns>
                <asp:BoundField DataField="Complaint_No" HeaderText="Complaint_No" 
                    ReadOnly="True" SortExpression="Complaint_No" />
                <asp:BoundField DataField="Complaint_Date" HeaderText="Complaint_Date" 
                    SortExpression="Complaint_Date" />
                <asp:BoundField DataField="Complaint_Type" HeaderText="Complaint_Type" 
                    SortExpression="Complaint_Type" />
                <asp:BoundField DataField="Complaint_Sub_Type" HeaderText="Complaint_Sub_Type" 
                    SortExpression="Complaint_Sub_Type" />
                <asp:BoundField DataField="Detail_Of_Complaint" 
                    HeaderText="Detail_Of_Complaint" SortExpression="Detail_Of_Complaint" />
            </Columns>
        </asp:GridView>
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

