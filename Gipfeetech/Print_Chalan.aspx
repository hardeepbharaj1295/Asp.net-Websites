<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print_Chalan.aspx.cs" Inherits="Print_Chalan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <div>
     <table class="style1">
            <tr>
                <td>
                    <table class="style1" border="1">
                        <tr>
                            <td align="center" colspan="2" style="border: thin dashed #000000">
                                <strong>Giptech Education, Jalandhar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
&nbsp;</strong> (Bank Copy)</td>
                        </tr>
                        <tr>
                            <td>
                                Registeration Id</td>
                            <td>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name of Bank</td>
                            <td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name of Branch</td>
                            <td>
                                <asp:Label ID="Label22" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date of Deposit</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                .....................................</td>
                        </tr>
                        <tr>
                            <td>
                                Account to Be&nbsp; Credited</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Student Name</td>
                            <td class="style2">
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Father Name</td>
                            <td>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Course
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Amount</td>
                            <td>
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style1" border="1">
                                    <tr>
                                        <td colspan="2">
                                            <strong>Denomination</strong></td>
                                        <td>
                                            <strong>Amount</strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1000 X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            500X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            100X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            50X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            20X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            10X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            5X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Total</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Transaction Id (Filled by Office)</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                .......................................</td>
                        </tr>
                        <tr>
                            <td>
                                Signature/Stamp</td>
                            <td>
                                Signature of Depostior</td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="style1" border="1">
                        <tr>
                            <td align="center" colspan="2" style="border: thin dashed #000000">
                                <strong>Giptech Education, Jalandhar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                </strong>&nbsp;(Institute Copy)</td>
                        </tr>
                        <tr>
                            <td>
                                Registration Id</td>
                            <td>
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name of Bank</td>
                            <td>
                                <asp:Label ID="Label9" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name of Branch</td>
                            <td>
                                <asp:Label ID="Label23" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date of Deposit</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                .....................................</td>
                        </tr>
                        <tr>
                            <td>
                                Account to Be&nbsp; Credited</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Student Name</td>
                            <td>
                                <asp:Label ID="Label10" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Father Name</td>
                            <td>
                                <asp:Label ID="Label11" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Course
                            </td>
                            <td>
                                <asp:Label ID="Label12" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Amount</td>
                            <td>
                                <asp:Label ID="Label13" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style1" border="1">
                                    <tr>
                                        <td colspan="2">
                                            <strong>Denomination</strong></td>
                                        <td>
                                            <strong>Amount</strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1000 X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            500X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            100X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            50X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            20X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            10X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            5X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Total</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Transaction Id (Filled by Office)</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                ........................................</td>
                        </tr>
                        <tr>
                            <td>
                                Signature/Stamp</td>
                            <td>
                                Signature of Depostior</td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="style1" border="1">
                        <tr>
                            <td align="center" colspan="2" style="border: thin dashed #000000">
                                <strong>Giptech Education, Jalandhar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
&nbsp;</strong> (Student Copy)</td>
                        </tr>
                        <tr>
                            <td>
                                Registration Id</td>
                            <td>
                                <asp:Label ID="Label15" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name of Bank</td>
                            <td>
                                <asp:Label ID="Label16" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name of Branch</td>
                            <td>
                                <asp:Label ID="Label24" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date of Deposit</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;
                                ......................................</td>
                        </tr>
                        <tr>
                            <td>
                                Account to Be&nbsp; Credited</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Student Name</td>
                            <td>
                                <asp:Label ID="Label17" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Father Name</td>
                            <td>
                                <asp:Label ID="Label18" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Course
                            </td>
                            <td>
                                <asp:Label ID="Label19" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Amount</td>
                            <td>
                                <asp:Label ID="Label20" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style1" border="1">
                                    <tr>
                                        <td colspan="2">
                                            <strong>Denomination</strong></td>
                                        <td>
                                            <strong>Amount</strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1000 X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            500X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            100X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            50X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            20X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            10X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            5X</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Total</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Transaction Id (Filled by Office)</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;
                                ........................................</td>
                        </tr>
                        <tr>
                            <td>
                                Signature/Stamp</td>
                            <td>
                                Signature of Depostior</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Button1" class="btn btn-primary" type="button" value="Print" onclick="Javascript: window.print();" />
        <h4><a href="adminHome.aspx">Home</a></h4>
    </p>
    </div>
    </form>
</body>
</html>
