<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="postjob.aspx.cs" Inherits="postjob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container"> <br />
  <center><h2>U Can Post Your Job Here!</h2></center>
  <form action="/action_page.php">
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" 
            AutoPostBack="True">
       <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Comp Eng</asp:ListItem>
                                <asp:ListItem>Comp Sci</asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>EC</asp:ListItem>
                                <asp:ListItem>IC</asp:ListItem>
                                <asp:ListItem>Civil</asp:ListItem>
                                <asp:ListItem>Auto</asp:ListItem>
                                <asp:ListItem>Electrical</asp:ListItem>
                                <asp:ListItem>Mechanical</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Role"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" 
            AutoPostBack="True">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Programmer</asp:ListItem>
                                <asp:ListItem>Designer</asp:ListItem>
                                <asp:ListItem>Database Operater</asp:ListItem>
                                <asp:ListItem>Developer</asp:ListItem>
                                <asp:ListItem>Software Developer</asp:ListItem>
                                </asp:DropDownList>
    </div>
    <div class="form-group">
         <asp:Label ID="Label4" runat="server" Text="Minimum Qualificatio:"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" 
            AutoPostBack="True">
            <asp:ListItem>Select</asp:ListItem>
             <asp:ListItem>Diploma</asp:ListItem>
                                <asp:ListItem>BE/BTech</asp:ListItem>
                                <asp:ListItem>ME/MTech</asp:ListItem>
                                </asp:DropDownList>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Required Skills:"></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" 
            AutoPostBack="True">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>.NET</asp:ListItem>
                                                       <asp:ListItem>AJAX</asp:ListItem>
                                                       <asp:ListItem>ANDROID</asp:ListItem>
                                                       <asp:ListItem>PHP</asp:ListItem>
                                                       <asp:ListItem>JAVA</asp:ListItem>
                                                       <asp:ListItem>JAVASCRIPT</asp:ListItem>
                                                       <asp:ListItem>APPLE iOS</asp:ListItem>
                                                       <asp:ListItem>AUTO CAD</asp:ListItem>
                                                       <asp:ListItem>C</asp:ListItem>
                                                       <asp:ListItem>C#</asp:ListItem>
                                                       <asp:ListItem>c++</asp:ListItem>
                                                       <asp:ListItem>C# .NET</asp:ListItem>
                                                       <asp:ListItem>CAD/CAM</asp:ListItem>
                                                       <asp:ListItem>CSS</asp:ListItem>
                                                       <asp:ListItem>Dreamviewer</asp:ListItem>
                                                       <asp:ListItem>DBMS</asp:ListItem>
                                </asp:DropDownList>
    </div>
    <div class="form-group">
       <asp:Label ID="Label6" runat="server" Text="Maximum Age:"></asp:Label>
        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" 
            AutoPostBack="True">
            <asp:ListItem>Select</asp:ListItem>
             <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                </asp:DropDownList>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Job Location:"></asp:Label>
        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control" 
            AutoPostBack="True">
            <asp:ListItem>Select Location</asp:ListItem>
             <asp:ListItem>Modasa</asp:ListItem>
                                <asp:ListItem>Vadodara</asp:ListItem>
                                <asp:ListItem>Ahemdabad</asp:ListItem>
                                <asp:ListItem>Surat</asp:ListItem>
                                <asp:ListItem>Rajkot</asp:ListItem>
                                <asp:ListItem>Mumbai</asp:ListItem>
                                <asp:ListItem>Pune</asp:ListItem>
                                <asp:ListItem>Banglure</asp:ListItem>
                                </asp:DropDownList>
    </div>
    <div class="form-group">
         <asp:Label ID="Label8" runat="server" Text="Salary:"></asp:Label>
        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control" 
            AutoPostBack="True">
              <asp:ListItem>In Thousand</asp:ListItem>
                                <asp:ListItem> 5000-10000</asp:ListItem>
                                <asp:ListItem>10000-15000</asp:ListItem>
                                <asp:ListItem>15000-20000</asp:ListItem>
                                <asp:ListItem>20000-25000</asp:ListItem>
                                <asp:ListItem>25000-30000</asp:ListItem>
                                <asp:ListItem>30000-35000</asp:ListItem>
                                <asp:ListItem>35000-40000</asp:ListItem>
                                <asp:ListItem>40000-45000</asp:ListItem>
                                <asp:ListItem>45000-50000</asp:ListItem>
                                <asp:ListItem>50000</asp:ListItem>
                                </asp:DropDownList>
    </div>
    <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Working Hour"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label10" runat="server" Text="Last Apply Date"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    </form></div>
    <center>
        <asp:Button ID="Button1" runat="server" Text="Post Job" 
            onclick="Button1_Click" /></center>
        <br />

</asp:Content>

