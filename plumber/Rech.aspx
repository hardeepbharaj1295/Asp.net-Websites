<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rech.aspx.cs" Inherits="Rech" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
	<div class="container"><br><br>
    <h2>Recharge Here</h2>
    <form id="Form1" class="form-horizontal" runat="server">
    	<div class="col-md-10 col-md-offset-1"><br><br>
        	
        	<div class="panel panel-primary">
            	<div class="panel-heading">
                	<div class="panel-title">Recharge Here</div>
                </div>
                <div class="panel-body">
                	
            	        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Select Type</label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Prepaid</asp:ListItem>
                                    <asp:ListItem>Postpaid</asp:ListItem>
                                </asp:DropDownList>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Your Name</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter Name"  required runat="server"></asp:TextBox>
                    	    </div>
                        </div>
                
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Enter Number</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" required placeholder="Enter Number" runat="server"></asp:TextBox>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Amount</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" required placeholder="Enter Amount" runat="server"></asp:TextBox>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Account</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox4" CssClass="form-control" required placeholder="Enter Account" runat="server"></asp:TextBox>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
                                    Text="Submit" onclick="Button1_Click" />
                            </div>
                        </div>
          
                </div>
            </div>
        </div>
        <br /><br />
        </form>
    </div>
</div>
</asp:Content>

