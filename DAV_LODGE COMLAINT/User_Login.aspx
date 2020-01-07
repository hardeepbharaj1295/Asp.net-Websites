<%@ Page Title="" Language="C#" MasterPageFile="~/Static.master" AutoEventWireup="true" CodeFile="User_Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 1015px">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Correct Email Id" 
            style="z-index: 1; left: 686px; top: 269px; position: absolute; height: 19px;" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" 
            
            style="z-index: 1; left: 686px; top: 241px; position: absolute; height: 24px;"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 586px; top: 245px; position: absolute; height: 25px" 
            Text="User id" ForeColor="#000099"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 806px; top: 345px; position: absolute" 
            Text="Invalid Password or User ID" Visible="False"></asp:Label>
        
        <asp:Label ID="Label4" runat="server" ForeColor="#3333FF" 
            style="z-index: 1; left: 630px; top: 203px; position: absolute; font-family: 'Lucida Calligraphy'; font-size: x-large; font-weight: 700" 
            Text="User Login"></asp:Label>
        
        <br />
        <asp:TextBox ID="TextBox2" runat="server" 
            
            
            
            
            
            
            style="z-index: 1; left: 685px; top: 291px; position: absolute; height: 24px;" 
            TextMode="Password"></asp:TextBox>
    <br />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 586px; top: 295px; position: absolute" 
            Text="Password" ForeColor="#000099"></asp:Label>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 707px; top: 341px; position: absolute; font-weight: 700;" 
            Text="Sign In" ForeColor="#000099" onclick="Button1_Click" />
    <br />
        <asp:LinkButton ID="LinkButton1" runat="server" 
            style="z-index: 1; left: 616px; top: 371px; position: absolute" 
            onclick="LinkButton1_Click">Forget password</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
            style="z-index: 1; left: 754px; top: 371px; position: absolute">Create An Account</asp:LinkButton>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" 
            ErrorMessage="Password Should Be 4 to 20 Character Long Only" 
            style="z-index: 1; left: 688px; top: 319px; position: absolute" 
            ValidationExpression="[^\t\n\r]{4,20}" ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <br />
    <br />
</p>
</asp:Content>

