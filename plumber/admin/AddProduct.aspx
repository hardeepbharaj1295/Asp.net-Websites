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
                                    <asp:ListItem>Painter</asp:ListItem>
                                    <asp:ListItem>Hotels</asp:ListItem>
                                    <asp:ListItem>Doctor</asp:ListItem>
                                    <asp:ListItem>Caterers</asp:ListItem>
                                    <asp:ListItem>Masan</asp:ListItem>
                                    <asp:ListItem>Electrician</asp:ListItem>
                                    <asp:ListItem>Carpenter</asp:ListItem>
                                    <asp:ListItem>Plumber</asp:ListItem>
                                </asp:DropDownList>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Shop Name</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter Product Name"  required runat="server"></asp:TextBox>
                    	    </div>
                        </div>
                
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Shop Photo</label>
                            <div class="col-md-8">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                    	       
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Shop Description</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" required placeholder="Enter Product Description" runat="server"></asp:TextBox>
                    	        
                            </div>
                        </div>
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Contact Number</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" required placeholder="Enter Product Price" runat="server"></asp:TextBox>
                    	        
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
      
    <asp:GridView ID="GridView1" runat="server" 
            CssClass="table table-condensed table-bordered" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Shop Name" SortExpression="name" />
            <asp:ImageField DataImageUrlField="photo" HeaderText="Image">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:BoundField DataField="price" HeaderText="Contact" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" />
            <asp:BoundField DataField="request" HeaderText="Request" 
                SortExpression="request" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView> 
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Products] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Products] ([name], [photo], [type], [price], [description], [userid], [userno], [request]) VALUES (@name, @photo, @type, @price, @description, @userid, @userno, @request)" 
            SelectCommand="SELECT * FROM [Products] WHERE ([userid] = @userid)" 
            UpdateCommand="UPDATE [Products] SET [name] = @name, [photo] = @photo, [type] = @type, [price] = @price, [description] = @description, [userid] = @userid, [userno] = @userno, [request] = @request WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="userno" Type="String" />
                <asp:Parameter Name="request" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="id" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="userno" Type="String" />
                <asp:Parameter Name="request" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        </form>
    </div>
</div>
</asp:Content>

