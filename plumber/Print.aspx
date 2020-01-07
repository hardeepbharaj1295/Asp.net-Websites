<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="Print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .auto-style1 {
            width: 50px;
        }
        .auto-style2 {
            height: 25px;
            width: 176px;
        }
        .style4
        {
            height: 25px;
            width: 58px;
        }
        .style5
        {
            width: 58px;
        }
    </style>
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
                                <strong>Your's Need, Jalandhar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
&nbsp;</strong> (Bank Copy)</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Emp Name</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                               Loan Type</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Sex</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label22" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Amount</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Income/Year</td>
                            <td class="auto-style1">
                                &nbsp;<asp:Label ID="Label6" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Emp Job</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Bank Name</td>
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
