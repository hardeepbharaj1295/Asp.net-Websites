using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string gn;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["User_id"].ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
            if (RadioButtonList1.SelectedIndex == 0)
            gn = "General";
            if (gn == "General")
            {
            Session["st"] = "General";
            Response.Redirect("User_Complaint_Form.aspx");
            }


            if (RadioButtonList1.SelectedIndex == 1)
                gn = "General";
            if (gn == "General")
            {
                Session["st"] = "Change Of Address In Electoral Roll";
                Response.Redirect("User_Complaint_Form.aspx");
            }

            if (RadioButtonList1.SelectedIndex == 2)
                gn = "General";
            if (gn == "General")
            {
                Session["st"] = "Unauthorised Advt.Boards";
                Response.Redirect("User_Complaint_Form.aspx");
            }

        
    }
}