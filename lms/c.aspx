<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="c.aspx.cs" Inherits="c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">Contact us</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    NAME
                                   
     <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" rquired placeholder=" enter your name" 
                                        Width="420px"></asp:TextBox>
                                    <div class="invalid-feedback">Oops, you missed this one.</div>
                                </div>
                                <div class="form-group">
                                    <label>EmailID</label>
                                    
         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required 
                                        placeholder="enter your email id" Width="420px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ErrorMessage="RegularExpressionValidator" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        ControlToValidate="TextBox2" Visible="False"></asp:RegularExpressionValidator>
                                    <div class="invalid-feedback">Enter your password too!</div>
                                </div>
                                <div class="form-group">
                                <label>Message</label>
             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" required 
                                        placeholder="enter the message" TextMode="MultiLine" Width="420px"></asp:TextBox>
             
             <div class="invalid-feedback">Enter the message.</div>
                                </div>
                                <div>
                                    
                                </div>
 <asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn btn-success btn-lg float-right" 
                                    onclick="Button1_Click1" />
                                
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
</asp:Content>

