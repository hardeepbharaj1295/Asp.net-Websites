<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="testRegister.aspx.cs" Inherits="testRegister" %>

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
                                        Text="Test"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>White Blood Cells (WBC)</asp:ListItem>
                                            <asp:ListItem>Red Blood Cells (RBC)</asp:ListItem>
                                            <asp:ListItem>Hemoglobin (HGB)</asp:ListItem>
                                            <asp:ListItem>Hematocrit (HCT)</asp:ListItem>
                                            <asp:ListItem>Mean Corpuscular Volume (MCV)</asp:ListItem>
                                            <asp:ListItem>Mean Corpuscular Hemoglobin (MCH)</asp:ListItem>
                                            <asp:ListItem>Mean Corpuscular Hemoglobin Concentration (MCHC)</asp:ListItem>
                                            <asp:ListItem>Red Cell Distribution Width (RDW)</asp:ListItem>
                                            <asp:ListItem>Platelets</asp:ListItem>
                                        </asp:DropDownList>
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

