<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <br /><br />
            
            <h2 style="font-family:Times New Roman; text-align:center;">Search Blood</h2>
            <br /><br />
            <div class="container">
               <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                Serach Blood
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <div class="form-group">
                                     <asp:Label ID="Label1" CssClass="control-label col-md-3" runat="server" 
                                        Text="Select Blood"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="blood" DataValueField="blood">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT DISTINCT [blood] FROM [donate] ORDER BY [blood]">
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label2" CssClass="control-label col-md-3" runat="server" 
                                        Text="Blood Group"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" 
                                            DataSourceID="SqlDataSource2" DataTextField="state" DataValueField="state">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT DISTINCT [state] FROM [donate] WHERE ([blood] = @blood) ORDER BY [state]">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="blood" 
                                                    PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label3" CssClass="control-label col-md-3" runat="server" 
                                        Text="City"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" 
                                            DataSourceID="SqlDataSource3" DataTextField="city" DataValueField="city">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT DISTINCT [city] FROM [donate] WHERE ([state] = @state) ORDER BY [city]">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList2" Name="state" 
                                                    PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-8 col-md-offset-3">
                                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" 
                                            Text="Submit" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br /><br />
               </div>
               <br /><br />
                <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
                    AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="blood" HeaderText="Blood" SortExpression="blood" />
                        <asp:BoundField DataField="mobileno" HeaderText="Mobileno" 
                            SortExpression="mobileno" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" 
                            SortExpression="gender" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [donate] WHERE (([blood] = @blood) AND ([state] = @state) AND ([city] = @city))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="blood" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="state" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="city" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br /><br />
            </div>
    </div>
</asp:Content>

