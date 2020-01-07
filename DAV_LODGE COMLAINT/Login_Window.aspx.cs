using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Login.aspx");
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Response.Redirect("User_Login.aspx");
    }
    
}