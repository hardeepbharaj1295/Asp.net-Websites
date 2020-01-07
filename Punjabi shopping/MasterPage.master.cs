using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            im.InnerHtml += "<li><span class='ico-account'></span><a href='Login.aspx'>LOGIN</a></li><li><span class='ico-account'></span><a href='Register.aspx'>Register</a></li>";
        }
        else
        {
            im.InnerHtml += "<li><span class='ico-account'></span><a href='Logout.aspx'>Logout</a></li>";
        }
    }
}
