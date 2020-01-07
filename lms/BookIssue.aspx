<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="BookIssue.aspx.cs" Inherits="BookIssue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
    <div class="col-md-12">
        <h2 class="text-center text-white mb-4">Bootstrap 4 Login Form</h2>
        <div class="row">
            <div class="container">
               <div class="col-md-12">


                    <div class="row">
                <div class="col-md-6 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-header">
                            <h3 class="mb-0">BOOK Issue</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    Book id<asp:DropDownList Width="400px" CssClass="form-control" ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="bookid" DataValueField="bookid">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [bookid] FROM [add_books1]"></asp:SqlDataSource>
                                </div>
                                <div class="form-group">
                                    <label>Roll Number</label>
                                    
         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required placeholder="" Width="400px"></asp:TextBox>
                                    
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
                </div>
            </div>
        </div>
    </div>
  </div>   
</asp:Content>

