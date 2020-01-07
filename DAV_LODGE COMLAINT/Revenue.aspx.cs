using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string rt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user_id"].ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
            rt = "Revenue";
        if (rt == "Revenue")
        {
            Session["st"] = "Revenue";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 1)
            rt = "Revenue";
        if (rt == "Revenue")
        {
            Session["st"] = "Complaints Related To Issue Of All Types Of License";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 2)
            rt = "Revenue";
        if (rt == "Revenue")
        {
            Session["st"] = "Complaints Related To Property Tax";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        
        if (RadioButtonList1.SelectedIndex == 3)
            rt = "Revenue";
        if (rt == "Revenue")
        {
            Session["st"] = "Inclusion,Detection Of Correction In The Voter List";
            Response.Redirect("User_Complaint_Form.aspx");
        }
    }
}