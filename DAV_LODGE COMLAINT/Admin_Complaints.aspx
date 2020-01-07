<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_Complaints.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" 
        
        style="z-index: 1; left: 817px; top: 272px; position: absolute; height: 125px; width: 499px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    <Columns>
     <asp:TemplateField HeaderText ="Select"><ItemTemplate ><input name ="RadioButton" type ="radio" value ='<%#Eval("Complaint_No") %>'/></ItemTemplate></asp:TemplateField>
        <asp:BoundField DataField="Complaint_No" HeaderText="Complaint_No" 
            SortExpression="Complaint_No" />
        <asp:BoundField DataField="Complaint_Date" HeaderText="Complaint_Date" 
            SortExpression="Complaint_Date" />
        <asp:BoundField DataField="Complaint_Type" HeaderText="Complaint_Type" 
            SortExpression="Complaint_Type" />
        <asp:BoundField DataField="Complaint_Sub_Type" HeaderText="Complaint_Sub_Type" 
            SortExpression="Complaint_Sub_Type" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [Complaint_No], [Complaint_Date], [Complaint_Type], [Complaint_Sub_Type] FROM [Complaint_Form]">
</asp:SqlDataSource>
&nbsp;&nbsp;<br />
    <asp:Label ID="Label4" runat="server" ForeColor="#009933" 
        style="z-index: 1; left: 935px; top: 202px; position: absolute; height: 29px; width: 290px; text-align: center; font-weight: 700; font-size: xx-large" 
        Text="Complaint Master"></asp:Label>
        <asp:Label ID="Label14" runat="server" ForeColor="#0033CC" 
            style="z-index: 1; left: 1102px; top: 132px; position: absolute" 
        Text="Label"></asp:Label>
<br />
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        
        style="z-index: 1; left: 1160px; top: 247px; position: absolute; font-size: large; font-weight: 700;">Continue.....</asp:LinkButton>
    
    <br />
<asp:Label ID="Label2" runat="server" Text="Select The Appropriate Complaint And Click The " 
        
        style="z-index: 1; left: 820px; top: 248px; position: absolute; width: 337px; font-weight: 700; font-style: italic;"></asp:Label>
    <br />
    <br />
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
        
        
        style="z-index: 1; left: 1271px; top: 130px; position: absolute; font-weight: 700; font-style: italic; font-size: large; width: 65px">Log Out</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
</asp:Content>

