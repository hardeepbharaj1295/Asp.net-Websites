<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Thanks.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label5" runat="server" ForeColor="#0033CC" 
            style="z-index: 1; left: 995px; top: 109px; position: absolute" 
            Text="User Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="#FF0066" 
            style="z-index: 1; left: 164px; top: 137px; position: absolute; text-align: justify; font-weight: 700; font-style: italic; font-size: xx-large; font-family: 'Times New Roman', Times, serif; height: 43px; width: 217px" 
            Text="FOR VISITING"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#FF0066" 
            style="z-index: 1; left: 13px; top: 137px; position: absolute; text-align: justify; font-weight: 700; font-style: italic; font-size: xx-large; font-family: 'Times New Roman', Times, serif; height: 43px; width: 145px" 
            Text="THANK'S"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" ForeColor="#003399" 
            onclick="Button1_Click" 
            style="z-index: 1; left: 974px; top: 172px; position: absolute; font-weight: 700; font-family: 'Lucida Calligraphy'; font-size: large; border: 4px ridge #00FFFF" 
            Text="Log Out" />
        <br />
    </p>
    <script type="text/javascript">
        if (window.history.forward(1) != null)
            window.history.forward(1);
    </script>
</asp:Content>

