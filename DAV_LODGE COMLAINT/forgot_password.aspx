<%@ Page Title="" Language="C#" MasterPageFile="~/Static.master" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 1200px">
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="z-index: 1; left: 829px; top: 233px; position: absolute; width: 40px;" 
            Text="GO" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Correct User Id" 
            style="z-index: 1; left: 665px; top: 265px; position: absolute" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ForeColor="#000099"></asp:RegularExpressionValidator>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 599px; top: 181px; position: absolute; height: 22px" 
            Text="Forgot Password" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#000099"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 520px; top: 233px; position: absolute; height: 20px; width: 46px;" 
            Text="User id" ForeColor="#000099"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" 
            
            
            style="z-index: 1; left: 667px; top: 233px; position: absolute; width: 128px;"></asp:TextBox>
        <br />
        
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 670px; top: 375px; position: absolute; height: 18px; width: 122px;" 
            Text="Show the password" ForeColor="#000099"></asp:Label>
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 829px; top: 345px; position: absolute; height: 26px; width: 40px;" 
            Text="OK" ForeColor="#000099" onclick="Button2_Click" />
        <br />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 629px; top: 290px; position: absolute; height: 21px; width: 191px;" 
            Text="Answer The Security Question" ForeColor="#000099"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 519px; top: 345px; position: absolute; height: 20px; width: 46px;" 
            Text="Answer" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" 
            
            
            
            style="z-index: 1; left: 666px; top: 346px; position: absolute; width: 128px;"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 625px; top: 314px; position: absolute" Text="Question" 
            Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
</asp:Content>

