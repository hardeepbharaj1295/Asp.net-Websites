<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="admin_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
	<div class="container"><br><br>
    <h2>Add Menu Type</h2>
    <form id="Form1" class="form-horizontal" runat="server">
    	<div class="col-md-10 col-md-offset-1"><br><br>
        	
        	<div class="panel panel-primary">
            	<div class="panel-heading">
                	<div class="panel-title">Add Menu Type</div>
                </div>
                <div class="panel-body">
                	
            	        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Select Menu Type</label>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                    <asp:ListItem>New Collection</asp:ListItem>
                                    <asp:ListItem>Indian Cards</asp:ListItem>
                                    <asp:ListItem>Scroll Cards</asp:ListItem>
                                    <asp:ListItem>Theme Cards</asp:ListItem>
                                </asp:DropDownList>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Cards Name</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter Cards Name"  required runat="server"></asp:TextBox>
                    	    </div>
                        </div>
                
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Cards Photo</label>
                            <div class="col-md-8">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                    	       
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Cards Description</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" required placeholder="Enter Cards Description" runat="server"></asp:TextBox>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Cards Price</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" required placeholder="Enter Cards Price" runat="server"></asp:TextBox>
                    	        
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
        <asp:GridView ID="GridView1" CssClass="table table-responsive table-condensed" 
            runat="server" AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                <asp:ImageField DataImageUrlField="photo" HeaderText="Image">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="description" HeaderText="Description" 
                    SortExpression="description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Cards] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Cards] ([name], [photo], [type], [price], [description]) VALUES (@name, @photo, @type, @price, @description)" 
            SelectCommand="SELECT * FROM [Cards]" 
            UpdateCommand="UPDATE [Cards] SET [name] = @name, [photo] = @photo, [type] = @type, [price] = @price, [description] = @description WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </form>
    </div>
</div>
</asp:Content>

