<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Change_Password.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 1200px">
        <br />
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 970px; top: 149px; position: absolute" 
            Text="Change Password" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#000099"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" 
            style="z-index: 1; left: 1054px; top: 272px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 925px; top: 325px; position: absolute" 
            Text="Re_Enter password" ForeColor="#000099"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="User Is Update" ForeColor="Red" 
            style="z-index: 1; left: 930px; top: 389px; position: absolute"></asp:Label>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox4" ControlToValidate="TextBox3" 
            ErrorMessage="Password Mismatch" 
            style="z-index: 1; left: 1056px; top: 359px; position: absolute" 
            ForeColor="Red"></asp:CompareValidator>
        <br />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 925px; top: 238px; position: absolute" 
            Text="Old password" ForeColor="#000099"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 1054px; top: 237px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 925px; top: 274px; position: absolute" 
            Text="New Password"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 1054px; top: 325px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 1045px; top: 387px; position: absolute; height: 28px; font-size: large; width: 166px;" 
            Text="Change Password" ForeColor="#000099" onclick="Button1_Click" />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 1098px; top: 201px; position: absolute" 
            Text="User id show" ForeColor="#000099"></asp:Label>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox4" 
            ErrorMessage="Password Should Be 4 to 20 Character Long Only" 
            style="z-index: 1; left: 925px; top: 299px; position: absolute; height: 27px; width: 317px;" 
            ValidationExpression="[^\t\n\r]{4,20}" ForeColor="Red"></asp:RegularExpressionValidator>
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

