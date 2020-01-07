<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table runat="server">
            <tr>
                <td>
                     <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large" Height="70px" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="Label1" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <td>

                    <asp:TextBox ID="TextBox2" runat="server" Width="138px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
                </td>
                    
                
            </tr>
        </table>
       
    
    </div>
    </form>
</body>
</html>
