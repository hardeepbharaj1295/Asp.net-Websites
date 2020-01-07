<%@ Page Title="" Language="C#" MasterPageFile="~/Static.master" AutoEventWireup="true" CodeFile="Login_Window.aspx.cs" Inherits="_Default" %>

<script runat="server">

   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 1200px">
        <asp:RadioButton ID="RadioButton1" runat="server" 
            style="z-index: 1; left: 91px; top: 248px; position: absolute; height: 21px; font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700; width: 113px;" 
            Text="ADMIN" AutoPostBack="True" GroupName="a" 
            oncheckedchanged="RadioButton1_CheckedChanged" ForeColor="#000099" />
        <br />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" 
            style="z-index: 1; left: 91px; top: 291px; position: absolute; font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700; width: 94px;" 
            Text="USER" AutoPostBack="True" GroupName="a" 
            oncheckedchanged="RadioButton2_CheckedChanged" ForeColor="#000099" />
        
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

