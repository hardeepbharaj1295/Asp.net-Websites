<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="admin_AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
	<div class="container">
    <form id="Form1" class="form-horizontal" runat="server">
    	
    <h2>Add Category Type</h2>
    	<div class="col-md-10 col-md-offset-1"><br><br>
        	
        	<div class="panel panel-primary">
            	<div class="panel-heading">
                	<div class="panel-title">Add Category</div>
                </div>
                <div class="panel-body">
                	
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Category Name</label>
                            <div class="col-md-8">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter Product Name"  required runat="server"></asp:TextBox>
                    	    </div>
                        </div>
                
                        <div class="form-group">
                	        <label class="control-label col-md-3" for="title">Category Photo</label>
                            <div class="col-md-8">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
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
        CssClass="table table-responsive table-condensed" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:ImageField  DataImageUrlField="photo" 
                    HeaderText="Image">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:CommandField AccessibleHeaderText="Delete" HeaderText="Delete" 
                    ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [category] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [category] ([name], [photo]) VALUES (@name, @photo)" 
        SelectCommand="SELECT * FROM [category]" 
        UpdateCommand="UPDATE [category] SET [name] = @name, [photo] = @photo WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>

        <br><br>
        
        </form>
    </div>
</div>
</asp:Content>

