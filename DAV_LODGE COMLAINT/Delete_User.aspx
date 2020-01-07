<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Delete_User.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p style="width: 1200px; height: 196px;">
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 228px; top: 173px; position: absolute" 
            Text="Delete user A/C" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#000099"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" 
            
            
            
            style="z-index: 1; left: 255px; top: 248px; position: absolute; width: 123px; height: 23px;"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 180px; top: 205px; position: absolute" 
            Text="User id" ForeColor="#000099"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" 
            
            style="z-index: 1; left: 253px; top: 201px; position: absolute; width: 129px; height: 23px;"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 183px; top: 302px; position: absolute" Text="D O B" 
            ForeColor="#000099"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" 
            ErrorMessage="Password Should Be 4 to  20 Character Long Only" 
            style="z-index: 1; left: 255px; top: 273px; position: absolute" 
            ValidationExpression="[^\t\n\r]{4,20}" ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" 
            
            
            style="z-index: 1; left: 254px; top: 298px; position: absolute; height: 25px; width: 128px;"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="dd/mm/yyyy" 
            style="z-index: 1; left: 253px; top: 323px; position: absolute; height: 25px" 
            
            
            ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" 
            ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 180px; top: 250px; position: absolute" 
            Text="Password" ForeColor="#000099"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Correct Email_Id" 
            style="z-index: 1; left: 253px; top: 225px; position: absolute" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ForeColor="#000099"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 249px; top: 350px; position: absolute" 
            Text="Delete account" ForeColor="#000099" onclick="Button1_Click" />
        <br />
        <br />
    </p>
    <p style="width: 1200px; height: 196px;">
        <br />
    </p>
</asp:Content>

