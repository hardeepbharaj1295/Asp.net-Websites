<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ShoppingCart.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        p{
            padding:10px;
        }
    </style>

    <div class="row">
        <h2><%: Title %>.</h2>
        <div class="row">
            <h1>How to contact us</h1>
        </div>
        <div class="row">
            <p>If you ever have any questions or comments about our products,<br /> 
                please be sure to contact us in whatever way is moat convienient for you.
            </p>
        </div>
        <div class="row">
            <p class="col-sm-2">Phone:</p>
            <p class="col-sm-4">1-800-555-0400<br /> Weekdays, 8 to 5 Pacific Time</p>
        </div>
        <div class="row">
            <p class="col-sm-2">E-mail:</p>
            <p class="col-sm-4"><asp:HyperLink runat="server" NavigateUrl="mainto:mobilepro@mobileprosoftware.com">mobilepro@mobileprosoftware.com</asp:HyperLink></p>
        </div>
        <div class="row">
            <p class="col-sm-2">Fax:</p>
            <p class="col-sm-4">1-559-555-2732<br /> Weekdays, 8 to 5 Pacific Time</p>
        </div>
        <div class="row">
            <p class="col-sm-2">Address:</p>
            <p class="col-sm-4">MobilePro Software Inc. <br />1500 N. Main Street <br />Freshno, California 93710</p>
        </div>
    </div>
</asp:Content>
