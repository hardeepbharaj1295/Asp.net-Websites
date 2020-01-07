<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="Print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table class="style1">
            <tr>
                <td>
                    <table class="style1" border="1">
                        <tr>
                            <td align="center" colspan="2" style="border: thin dashed #000000">
                                <strong>Invoice&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
&nbsp;</strong> </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Name</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Address</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Product</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Price</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <input id="Button1" class="btn btn-primary" type="button" value="Print" onclick="Javascript: window.print();" />
        <h4><a href="Default.aspx">Home</a></h4>
    </div>
    </form>
</body>
</html>
