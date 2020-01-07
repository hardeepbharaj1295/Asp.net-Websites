﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add books.aspx.cs" Inherits="add_books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">ADD BOOKS</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                               
                               
                                <div class="form-group">
                                    Book id<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
                                        rquired placeholder=" " Width="400px"></asp:TextBox>
                                    <div class="invalid-feedback">Oops, you missed this one.</div>
                                </div>
                                <div class="form-group">
                                    <label>Title</label>
                                    
         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                                    
                                    <div class="invalid-feedback">Enter your password too!</div>
                                </div>
                                <div class="form-group">
                                <label>Author name</label>
             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" required 
                                        placeholder="" Width="400px"></asp:TextBox>

 <div class="invalid-feedback">Enter the message.</div>
                                </div>
                                <div class="form-group">
                                
     <label>Publisher</label>
     <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                <label>Cost</label>
         <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" required placehilder="" Width="400px"></asp:TextBox>
                                </div>
                                <div class="form-group">
<label>Quantity</label>

             <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" required placeholder="" 
                                        Width="400px"></asp:TextBox>
                                </div>
                                <div>
                                    
                                </div>
 <asp:Button ID="Button1" runat="server" Text="ADD" class="btn btn-success btn-lg float-right" 
                                    onclick="Button1_Click" />
                                
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


