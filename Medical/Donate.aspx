<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donate.aspx.cs" Inherits="Donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <br /><br />
            
            <h2 style="font-family:Times New Roman; text-align:center;">Blood Donation</h2>
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
                                        Text="Full Name"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="Label2" CssClass="control-label col-md-3" runat="server" 
                                        Text="Blood Group"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>A+</asp:ListItem>
                                            <asp:ListItem>B+</asp:ListItem>
                                            <asp:ListItem>O+</asp:ListItem>
                                            <asp:ListItem>A-</asp:ListItem>
                                            <asp:ListItem>B-</asp:ListItem>
                                            <asp:ListItem>O-</asp:ListItem>
                                            <asp:ListItem>AB+</asp:ListItem>
                                            <asp:ListItem>AB-</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label3" CssClass="control-label col-md-3" runat="server" 
                                        Text="Mobile Number"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox2" TextMode="Number" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label4" CssClass="control-label col-md-3" runat="server" 
                                        Text="State"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label5" CssClass="control-label col-md-3" runat="server" 
                                        Text="City"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label6" CssClass="control-label col-md-3" runat="server" 
                                        Text="Gender"></asp:Label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8 col-md-offset-3">
                                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" 
                                            Text="Submit" onclick="Button1_Click" />
                                    </div>
                                    <br />
                                    <br />
                                   
                                </div>
                            </div>
                             
                        </div>

                    </div>
                    <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" AutoGenerateColumns="False" 
                                        DataKeyNames="id" DataSourceID="SqlDataSource1" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                            <asp:BoundField DataField="blood" HeaderText="blood" SortExpression="blood" />
                                            <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                                                SortExpression="mobileno" />
                                            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                            <asp:BoundField DataField="gender" HeaderText="gender" 
                                                SortExpression="gender" />
                                            <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" 
                                                ShowEditButton="True" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        DeleteCommand="DELETE FROM [donate] WHERE [id] = @id" 
                                        InsertCommand="INSERT INTO [donate] ([name], [blood], [mobileno], [state], [city], [gender], [userid]) VALUES (@name, @blood, @mobileno, @state, @city, @gender, @userid)" 
                                        SelectCommand="SELECT * FROM [donate] WHERE ([userid] = @userid)" 
                                        UpdateCommand="UPDATE [donate] SET [name] = @name, [blood] = @blood, [mobileno] = @mobileno, [state] = @state, [city] = @city, [gender] = @gender, [userid] = @userid WHERE [id] = @id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="name" Type="String" />
                                            <asp:Parameter Name="blood" Type="String" />
                                            <asp:Parameter Name="mobileno" Type="String" />
                                            <asp:Parameter Name="state" Type="String" />
                                            <asp:Parameter Name="city" Type="String" />
                                            <asp:Parameter Name="gender" Type="String" />
                                            <asp:Parameter Name="userid" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter Name="userid" SessionField="id" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="name" Type="String" />
                                            <asp:Parameter Name="blood" Type="String" />
                                            <asp:Parameter Name="mobileno" Type="String" />
                                            <asp:Parameter Name="state" Type="String" />
                                            <asp:Parameter Name="city" Type="String" />
                                            <asp:Parameter Name="gender" Type="String" />
                                            <asp:Parameter Name="userid" Type="String" />
                                            <asp:Parameter Name="id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                        <br />
               <br />
               </div>
               <br />
               <br />
            </div>
    </div>
</asp:Content>

