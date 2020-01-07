<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Place Order.aspx.cs" Inherits="Place_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">Place Order</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    <label for="uname1">Bookname</label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" rquired placeholder="" Width="400px"></asp:TextBox>
    
                                    <div class="invalid-feedback">Oops, you missed this one.</div>
                                </div>
                                <div class="form-group">
                                    <label>Suggested</label>
                                    
         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required placeholder="" 
                                        Width="400px"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>abc</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="invalid-feedback">Enter your password too!</div>
                                </div>
                                <div class="form-group">
                                    <label>Author Name</label>
           <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>avtar singh</asp:ListItem>
                                    </asp:DropDownList><br />
           <tr>
                <td class="style23">
                    Student-id</td>
                    <br />
                    <td class="style21">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label><br />
                        </td></tr>
                        <tr>
                <td class="style23">
                    Student Name</td>
                    <br />
                    <td class="style21">
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label><br />
                        </td></tr>
                        <tr>
                        <td class="style23">
                    Issue date</td>
                    <br />
                    <td class="style21">
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label><br />
                        </td></tr>
                                   <tr>
                                   <td class="style23">
                    Expiry date</td>
                    <br />
                    <td class="style21">
                        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label><br />
                        </td>
                                   
                                   </tr>   </div>
            
 <asp:Button ID="Button1" runat="server" Text="Place Order" class="btn btn-success btn-lg float-right" />
                                
                            </form>
                        </div>
                        <!--/card-block-->
                    </div>
                    <!-- /form card login -->

                </div>


            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
<br /><br /><br /><br /><br /><br />
    </label>
</asp:Content>

