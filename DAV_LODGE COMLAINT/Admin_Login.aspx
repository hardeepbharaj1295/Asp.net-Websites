<%@ Page Title="" Language="C#" MasterPageFile="~/Static.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox2" runat="server" 
    
        
        
        
        
        style="z-index: 1; left: 680px; top: 305px; position: absolute; width: 130px;" 
        TextMode="Password"></asp:TextBox>
<p style="width: 1200px">
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 552px; top: 259px; position: absolute; height: 25px; width: 77px; font-weight: 700;" 
        Text="Admin id" ForeColor="#000099"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 641px; top: 360px; position: absolute; width: 81px; height: 31px; font-weight: 700; font-size: small;" 
        Text="Sign In" ForeColor="#000099" onclick="Button1_Click" />
    <br />
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 552px; top: 308px; position: absolute; width: 58px; font-weight: 700;" 
        Text="Password" ForeColor="#000099"></asp:Label>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Enter Correct Email Id" 
        style="z-index: 1; left: 678px; top: 283px; position: absolute" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ForeColor="Red"></asp:RegularExpressionValidator>
    <asp:TextBox ID="TextBox1" runat="server" 
        
        
        
        
        style="z-index: 1; left: 680px; top: 259px; position: absolute; width: 130px; margin-bottom: 0px"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox2" 
        ErrorMessage="Password Should Be 4 to 20 Character Long Only" 
        style="z-index: 1; left: 679px; top: 331px; position: absolute; width: 314px;" 
        ValidationExpression="[^\t\n\r]{4,20}" ForeColor="Red"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" ForeColor="#3333FF" 
        style="z-index: 1; left: 597px; top: 211px; position: absolute; font-family: 'Lucida Calligraphy'; font-size: x-large; font-weight: 700" 
        Text="Admin Login"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 754px; top: 365px; position: absolute; width: 176px" 
        Text="Invalid Password or User ID" Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</p>
</asp:Content>

