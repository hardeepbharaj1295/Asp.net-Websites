<%@ Page Title="" Language="C#" MasterPageFile="~/Static.master" AutoEventWireup="true" CodeFile="Static_Suggest.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="#3333FF" 
            style="z-index: 1; left: 403px; top: 249px; position: absolute; font-weight: 700; font-style: italic; font-size: large" 
            Text="Give Suggestions If Any  :   "></asp:Label>
        <asp:Label ID="Label3" runat="server" ForeColor="#3333FF" 
            style="z-index: 1; left: 404px; top: 293px; position: absolute; font-weight: 700; font-size: large" 
            Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" 
            
            style="z-index: 1; left: 587px; top: 331px; position: absolute; width: 181px"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" BackColor="#EBF1EF" 
            
            style="z-index: -2; left: 396px; top: 241px; position: absolute; height: 272px; width: 570px"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 394px; top: 185px; position: absolute; font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large; width: 579px" 
            Text="FOR ANY QUERIES, PLEASE CONTACT :"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" 
            style="z-index: 1; left: 587px; top: 406px; position: absolute" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" ForeColor="#3333FF" 
            style="z-index: 1; left: 404px; top: 333px; position: absolute; font-weight: 700; font-size: medium" 
            Text="E - Mail ID"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" 
            
            style="z-index: 1; left: 587px; top: 369px; position: absolute; width: 181px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" 
            ErrorMessage="Mobile No Should Be 10 Character Long" ForeColor="Red" 
            style="z-index: 1; left: 784px; top: 371px; position: absolute; width: 261px" 
            ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="#3333FF" 
            style="z-index: 1; left: 403px; top: 371px; position: absolute; font-weight: 700; font-size: large" 
            Text="Contact No."></asp:Label>
        <asp:Button ID="Button1" runat="server" ForeColor="#3333FF" 
            onclick="Button1_Click" 
            style="z-index: 1; left: 541px; top: 475px; position: absolute; font-weight: 700; font-size: medium" 
            Text="SUBMIT" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" 
            
            style="z-index: 1; left: 587px; top: 294px; position: absolute; width: 181px"></asp:TextBox>
        <br />
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Name Must In A Text Form" 
            style="z-index: 1; left: 784px; top: 296px; position: absolute; color: #FF0000" 
            ValidationExpression="^[a-z A-Z]+$"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter Correct E-Mail ID" 
            style="z-index: 1; left: 784px; top: 334px; position: absolute; color: #FF0000" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" ForeColor="#3333FF" 
            style="font-size: large; font-weight: 700; z-index: 1; left: 403px; top: 410px; position: absolute" 
            Text="Suggestion"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 661px; top: 481px; position: absolute" 
            Text="Querie Is Submitted" Visible="False"></asp:Label>
    </p>
</asp:Content>

