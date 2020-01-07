<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br />

 <div class="form-group row">
  <label for="example-text-input" class="col-2 col-form-label">Text</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="name"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-2 col-form-label">Search</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="b"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-email-input" class="col-2 col-form-label">Email</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-url-input" class="col-2 col-form-label">URL</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-tel-input" class="col-2 col-form-label">Telephone</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-password-input" class="col-2 col-form-label">Password</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-number-input" class="col-2 col-form-label">Number</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-datetime-local-input" class="col-2 col-form-label">Date and time</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-date-input" class="col-2 col-form-label">Date</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-month-input" class="col-2 col-form-label">Month</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-week-input" class="col-2 col-form-label">Week</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-time-input" class="col-2 col-form-label">Time</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-color-input" class="col-2 col-form-label">Color</label>
  <div class="col-10">
      <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
  </div>
</div>
</asp:Content>

