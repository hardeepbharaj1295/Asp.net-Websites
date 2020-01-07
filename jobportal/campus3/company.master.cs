using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class company : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Company"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        //labels.Text = "Welcome :- "+Session["Company"].ToString();
    }
}
