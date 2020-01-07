using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string ed;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user_id"].ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
            ed = "Education";
        if (ed == "Education")
        {
            Session["st"] = "Complaints Regarding Schools";
            Response.Redirect("User_Complaint_Form.aspx");

        }
    }
}