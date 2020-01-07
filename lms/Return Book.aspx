<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Return Book.aspx.cs" Inherits="Return_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">Return Book</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    <label for="uname1">Student-id</label>
                                   
     <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" rquired placeholder="" Width="400px"></asp:TextBox>
                                    <div class="invalid-feedback">Oops, you missed this one.</div>
                                </div>
                                <div class="form-group">
                                    <label>Book name</label>
                                    
         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required placeholder="" 
                                        Width="400px"></asp:TextBox>
                                    <div class="invalid-feedback">Enter your password too!</div>
                                </div>
                                <div class="form-group">
                                    <label>Author name</label>
                                   
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                                      
             
                                
                                
                                </div>
 <asp:Button ID="Button1" runat="server" Text="RETURN" class="btn btn-success btn-lg float-right" />
                                
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

