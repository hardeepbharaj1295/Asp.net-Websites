<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Loan.aspx.cs" Inherits="Loan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
	<div class="container"><br><br>
    <h2>Apply for Loan</h2>
    <form id="Form1" class="form-horizontal" runat="server">
    	<div class="col-md-10 col-md-offset-1"><br><br>
        	
        	<div class="panel panel-primary">
            	<div class="panel-heading">
                	<div class="panel-title">Loan System</div>
                </div>
                <div class="panel-body">
                	    <div class="form-group">
                	        <label class="control-label col-md-3" for="title"> Name</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter Name"  required runat="server"></asp:TextBox>
                    	    </div>
                        </div>
            	        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Select Type</label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Home Loan</asp:ListItem>
                                    <asp:ListItem>Car Loan</asp:ListItem>
                                    <asp:ListItem>Education Loan</asp:ListItem>
                                </asp:DropDownList>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Select Sex</label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                    	        
                            </div>
                        </div>
                        
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Amount for Loan</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" required placeholder="Enter Amount for loan" runat="server"></asp:TextBox>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Income/Year</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" required placeholder="Enter your Income/year" runat="server"></asp:TextBox>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Employee</label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                    <asp:ListItem>Private</asp:ListItem>
                                    <asp:ListItem>Government Job</asp:ListItem>
                                </asp:DropDownList>
                    	        
                            </div>
                        </div> <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Select Bank</label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList4" runat="server">
                                    <asp:ListItem>SBI</asp:ListItem>
                                    <asp:ListItem>HDFC</asp:ListItem>
                                    <asp:ListItem>ICICI</asp:ListItem>
                                </asp:DropDownList>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
                                    Text="Submit" onclick="Button1_Click"/>
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

