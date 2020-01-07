using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            Label1.Text = Request["name"].ToString();
            Label2.Text = Request["loan"].ToString();
            Label22.Text = Request["sex"].ToString();
            Label3.Text = Request["emp"].ToString();
            Label4.Text = Request["bnkname"].ToString();
            Label5.Text = Request["amt"].ToString();
            Label6.Text = Request["inc"].ToString();

        }
    }
}