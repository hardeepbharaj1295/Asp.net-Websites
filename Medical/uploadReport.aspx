<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="uploadReport.aspx.cs" Inherits="uploadReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
        <br /><br />
            
            <h2 style="font-family:Times New Roman; text-align:center;">Test Register</h2>
            <br /><br />
            <div class="container">
               <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                Donate Blood
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <div class="form-group">
                                     <asp:Label ID="Label1" CssClass="control-label col-md-3" runat="server" 
                                        Text="RBC"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label2" CssClass="control-label col-md-3" runat="server" 
                                        Text="HCT"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label3" CssClass="control-label col-md-3" runat="server" 
                                        Text="HGB"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label4" CssClass="control-label col-md-3" runat="server" 
                                        Text="MCV"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label5" CssClass="control-label col-md-3" runat="server" 
                                        Text="MCH"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox5" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label6" CssClass="control-label col-md-3" runat="server" 
                                        Text="MCHC"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox6" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label7" CssClass="control-label col-md-3" runat="server" 
                                        Text="RDW"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox7" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label8" CssClass="control-label col-md-3" runat="server" 
                                        Text="WBC"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox8" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label9" CssClass="control-label col-md-3" runat="server" 
                                        Text="Platte"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox9" CssClass="form-control" required runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label10" CssClass="control-label col-md-3" runat="server" 
                                        Text="Upload Report"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8 col-md-offset-3">
                                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" 
                                            Text="Submit" onclick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
    </div>
</asp:Content>

