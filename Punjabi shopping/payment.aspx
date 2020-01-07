<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <div class="col-md-10 col-md-offset-1">
        <h2>Online Payment</h2>
        <br /><br />
        <div class="panel panel-primary">
	        <div class="panel-heading">
    	        <div class="panel-title">Payment</div>
            </div>
            <div class="panel-body">
    	        <div class="row">
        	        <form id="Form1" class="form-horizontal" runat="server">
            	        <div class="form-group">
                	        <label class="control-label col-md-3">Select Bank</label>
                            <div class="col-md-8">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem>SBI</asp:ListItem>
                                    <asp:ListItem>ICICI</asp:ListItem>
                                    <asp:ListItem>PNB</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
            	        <div class="form-group">
                	        <label class="control-label col-md-3">Account Number</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Enter Your Acount Number" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3">Amount</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-3">
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Button" 
                                    onclick="Button1_Click" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<br /><br />
</asp:Content>

