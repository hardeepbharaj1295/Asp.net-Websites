<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Complaint_Form.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label13" runat="server" 
            style="z-index: 1; left: 995px; top: 111px; position: absolute" 
            Text="User Name" ForeColor="#0033CC"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 477px; top: 144px; position: absolute; font-weight: 700; text-decoration: underline; font-family: 'Lucida Calligraphy'; font-size: x-large;" 
            Text="COMPLAINT FORM"></asp:Label>
        <asp:Label ID="Label4" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 392px; top: 299px; position: absolute" 
            Text="Complaint Type"></asp:Label>
        <br />
        
        <asp:Label ID="Label2" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 392px; top: 237px; position: absolute" 
            Text="Complaint No. "></asp:Label>
        <asp:Label ID="Label6" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 393px; top: 359px; position: absolute" 
            Text="Detail Of Complaint"></asp:Label>
        
        <asp:Label ID="Label11" runat="server" 
            style="z-index: 1; left: 694px; top: 271px; position: absolute" 
            Text="Label"></asp:Label>
        
        <br />
        
        
        
        <asp:Label ID="Label12" runat="server" 
            style="z-index: 1; left: 695px; top: 240px; position: absolute" Text="Label"></asp:Label>
        
        
        
        <asp:Label ID="Label10" runat="server" 
            style="z-index: 1; left: 694px; top: 301px; position: absolute" 
            Text="Label"></asp:Label>
        
        
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 392px; top: 268px; position: absolute" 
            Text="Complaint Date"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" 
            
            style="z-index: 1; left: 690px; top: 362px; position: absolute; height: 126px; width: 318px" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" 
            style="z-index: 1; left: 693px; top: 330px; position: absolute" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 391px; top: 329px; position: absolute" 
            Text="Compaint Sub Type"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 387px; top: 380px; position: absolute; height: 20px; width: 223px; font-size: small" 
            Text="( Should not exceed 400 character )"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" ForeColor="#000099" 
            style="z-index: 1; left: 547px; top: 505px; position: absolute; width: 130px; font-weight: 700; font-size: medium;" 
            Text="SUBMIT" onclick="Button1_Click" />
        <br />
        <br />
    </p>
</asp:Content>

