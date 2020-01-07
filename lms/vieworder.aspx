﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="viewbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="row">
        <div class="col-md-12">
            <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">View Order</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    <label for="uname1">Book Name</label>
                                    
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required placeholder="" Width="420px"></asp:TextBox>
                                    <div class="invalid-feedback">Oops, you missed this one.</div>
                                </div>
                                <div class="form-group">
                                    <label>Suggested</label>
                                    
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required placeholder="" Width="420px"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>abc</asp:ListItem>
                                        <asp:ListItem>bfg</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="invalid-feedback">Enter your password too!</div>
                                </div>
                                <div class="form-group">
                                <label>Author Name</label>
                                
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" required placeholder="" Width="420px"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>kalyani</asp:ListItem>
                                        <asp:ListItem>abc</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                
                                <button type="submit" class="btn btn-success btn-lg float-right" id="btnLogin">SEARCH</button>
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
