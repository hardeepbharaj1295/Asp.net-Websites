<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacherlogin.aspx.cs" Inherits="teacherlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link type="text/css" href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet"> 
   
</head>
<body>
    <form id="form1" runat="server">
     <div class="row col-md-offset-3">
        <br /><br />
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            <br /><br />
            <!-- form card login -->
                    <div class="card rounded-0" style="text-align:center">
                        <div class="card-header">
                            <h3 class="mb-0">Login</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                                <div class="form-group">
                                    <label for="uname1">Username</label>
                                   
     <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" rquired placeholder="username" Width="400px"></asp:TextBox>
                                    <div class="invalid-feedback">Oops, you missed this one.</div>
                                </div>
                                <div class="form-group">
                                    <label>EmailID</label>
                                    
         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required placeholder="email" 
                                        Width="400px"></asp:TextBox>
                                    <div class="invalid-feedback">Enter your password too!</div>
                                </div>

                                <div>
                                
                                </div>
 <asp:Button ID="Button1" runat="server" Text="SIGIN" class="btn btn-success btn-lg float-right" 
                                    onclick="Button1_Click" />

                                
                            </form>
                        </div>
                        <!--/card-block-->
                    </div>
                    <!-- /form card login -->
    </div>
    </form>
</body>
 <script src="vendor/bootstrap/js/bootstrap.min.js" />
 <script src="vendor/jquery/jquery.min.js" />
</html>
