<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function btnLogin_onclick() {

        }

// ]]>
    </script>
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
                            <h3 class="mb-0">Register Yourself Here</h3>
                        </div>
                        
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    <label for="uname1">Name</label>
                                  
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" rquired placeholder="" Width="400px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="Fill your name"></asp:RequiredFieldValidator>
                                    <div class="invalid-feedback">Oops, you missed this one.</div>
                                </div>
                                <div class="form-group">
                                    <label>Date Of Birth</label>
                                    
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" rquired placeholder="" Width="400px"></asp:TextBox>
                                    <div class="invalid-feedback">Enter your password too!</div>
                                </div>
                                <div class="form-group">
                                    <label>Class</label>
           <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" rquired placeholder="" Width="400px"></asp:TextBox>
                                      </div>
                                      <div class="form-group">
                                      <label>Select Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
               &nbsp;<asp:RadioButtonList 
                                              ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                                              RepeatDirection="Horizontal">
                                              <asp:ListItem>Male</asp:ListItem>
                                              <asp:ListItem>Female</asp:ListItem>
                                          </asp:RadioButtonList>
                 
                                      </div>
                                      
                                      <div class="form-group">
                                      <label>Email</label>

               <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                              ControlToValidate="TextBox4" ErrorMessage="please fill correct email-id" 
                                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                              Visible="False"></asp:RegularExpressionValidator>
                                      </div>
                                      <div class="form-group">
                                    <label>Mobile-No</label>
                                    
                   <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                                    </div>
                                    
                                    <div class="form-group">
                                    <label>Adress</label>
                       <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                       </div>
                       <div class="form-group">
                                    <label>City</label>
                           <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                           </div>
                           <div class="form-group">
                           <label>Pincode</label>
                               <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                           </div>
                                
<asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-success btn-lg float-right" 
                                    onclick="Button1_Click"/>
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
    <!--/row-->
</div>
<!--/container-->

</asp:Content>

