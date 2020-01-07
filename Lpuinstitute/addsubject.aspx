<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="addsubject.aspx.cs" Inherits="addsubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div class="col-md-8 col-md-offset-2" style="margin-top:50px">
        <ul class="nav-tabs nav">
            <li>
                <a class="active" style="background-color:white" href="#student" data-toggle="tab">Add New Subject</a>
            </li>
            <li>
                <a href="#description"  data-toggle="tab">Subject Description</a>
            </li>
        </ul>
        <div class="tab-content">
            <div id="student" class="fade col-md-12 in active tab-pane">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Add Subject</div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label AssociatedControlID="subject" CssClass="control-label col-md-3" runat="server">Subject Name</asp:Label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="subject" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label AssociatedControlID="FileUpload1" CssClass="control-label col-md-3" runat="server">Image</asp:Label>
                                    <div class="col-md-7">
                                        
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-7 col-md-offset-3">
                                        <asp:Button ID="submit" runat="server" CssClass="btn btn-info" Text="Submit" OnClick="submit_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="description" class="fade col-md-12 tab-pane in">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Add Subject Description</div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <asp:Label AssociatedControlID="DropDownList1" runat="server" CssClass="control-label col-md-3">Select Subject</asp:Label>
                                    <div class="col-md-7">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label AssociatedControlID="Details" runat="server" CssClass="control-label col-md-3">Add Details</asp:Label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="Details" runat="server" CssClass="form-control glyphicon glyphicon-align-right glyphicon-log-in"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>

