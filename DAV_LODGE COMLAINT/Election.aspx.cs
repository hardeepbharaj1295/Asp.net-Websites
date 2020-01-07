using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string el;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user_id"].ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
            el = "Election";
        if (el == "Election")
        {
            Session["st"] = "Complaints Regarding Voter List";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 1)
            el = "Election";
        if (el == "Election")
        {
            Session["st"] = "Issue Of Voter ID";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 2)
            el = "Election";
        if (el == "Election")
        {
            Session["st"] = "Name Error (Spelling Related)";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 3)
            el = "Election";
        if (el == "Election")
        {
            Session["st"] = "Name Not Found In Electoral Roll";
            Response.Redirect("User_Complaint_Form.aspx");
        }

    }
      
}