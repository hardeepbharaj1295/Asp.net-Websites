<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminHome.aspx.cs" Inherits="adminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="banner">
	 <div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li><div class="banner-bg"></div></li>
				<li><div class="banner-bg banner2"></div></li>
			 </ul>
	 </div>
	 <div class="container">
		 <div class="banner-sec">
			 <div class="banner-top">
						<div class="col-md-4 banner-text">
							<div class="banner-text_grid">
							 <img src="images/icon1.png" class="img-responsive" alt="/">
							<h4>Save Life</h4>
							<p>One Blood donation can save upto Three Lives..</p>
							</div>
						</div>
						<div class="col-md-4 banner-text">
							<div class="banner-text_grid">
							 <img src="images/icon2.png" class="img-responsive" alt="/">
							<h4>Blood Test</h4>
							<p>Just Register and get the team in your Home for Blood Test.</p>
							</div>
						</div>
						<div class="col-md-4 banner-text">
							<div class="banner-text_grid">
							 <img src="images/icon3.png" class="img-responsive" alt="/">
							<h4>Blood Donation</h4>
							<p>World Blood Donor Day 14th June 2016.</p>
							</div>
						</div>				
				 <div class="clearfix"></div>
			 </div>
		 </div>
	 </div>
</div>
<!--welcome-starts--> 
<div class="welcome">
		<div class="container">
			<div class="welcome-top">
				<h1>Welcome to Admin Panel</h1>
                <br /><br />
                <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" 
                    AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="custid" HeaderText="Custid" 
                            SortExpression="custid" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="dob" HeaderText="Dob" SortExpression="dob" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="address" HeaderText="Address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="test" HeaderText="Test" SortExpression="test" />
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Testing] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Testing] ([custid], [name], [email], [dob], [gender], [address], [test], [date]) VALUES (@custid, @name, @email, @dob, @gender, @address, @test, @date)" 
                    SelectCommand="SELECT * FROM [Testing] ORDER BY [id]" 
                    UpdateCommand="UPDATE [Testing] SET [custid] = @custid, [name] = @name, [email] = @email, [dob] = @dob, [gender] = @gender, [address] = @address, [test] = @test, [date] = @date WHERE [id] = @id">
                                 <DeleteParameters>
                                     <asp:Parameter Name="id" Type="Int32" />
                                 </DeleteParameters>
                                 <InsertParameters>
                                     <asp:Parameter Name="custid" Type="String" />
                                     <asp:Parameter Name="name" Type="String" />
                                     <asp:Parameter Name="email" Type="String" />
                                     <asp:Parameter Name="dob" Type="String" />
                                     <asp:Parameter Name="gender" Type="String" />
                                     <asp:Parameter Name="address" Type="String" />
                                     <asp:Parameter Name="test" Type="String" />
                                     <asp:Parameter Name="date" Type="String" />
                                 </InsertParameters>
                                 <UpdateParameters>
                                     <asp:Parameter Name="custid" Type="String" />
                                     <asp:Parameter Name="name" Type="String" />
                                     <asp:Parameter Name="email" Type="String" />
                                     <asp:Parameter Name="dob" Type="String" />
                                     <asp:Parameter Name="gender" Type="String" />
                                     <asp:Parameter Name="address" Type="String" />
                                     <asp:Parameter Name="test" Type="String" />
                                     <asp:Parameter Name="date" Type="String" />
                                     <asp:Parameter Name="id" Type="Int32" />
                                 </UpdateParameters>
                </asp:SqlDataSource>
                             <br />
                             	</div>
			
		</div>
</div>
<!--welcome-ends-->

</asp:content>

