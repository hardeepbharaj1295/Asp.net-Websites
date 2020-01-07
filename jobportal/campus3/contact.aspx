<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="padding:40px;">
        <center><img src="pics/Contact_Us_Banner.png" style="width:300px;"/></center>

        <div>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
               
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Message"></asp:Label>
                     <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" 
                        Text="Submit" onclick="Button1_Click" />
                </div>

            <table class="w-100">
                <tr>
                    <td> <bgcolor="#CC6699" height="350" width="20">
                        <center class="style6"> <span class="style5"><b>Company Name:</b> PIHU_Mobiles</span><br 
                                class="style5" />
                                 <span class="style5"><b>Website:</b> pihu_123@gmail.com</span><br 
                                class="style5" />
                                 <span class="style5"><b>Contact Number :</b> 7589214453</span></center></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

