using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string ec;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user_id"].ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
            ec = "Electrical";
        if (ec == "Electrical")
        {
            Session["st"] = "Damage To The Electric Pole";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 1)
             ec = "Electrical";
        if (ec == "Electrical")
        {
            Session["st"] = "Electric Shock Due To Street Light";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 2)
             ec = "Electrical";
        if (ec == "Electrical")
        {
            Session["st"] = "New Street Light";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 3)
             ec = "Electrical";
        if (ec == "Electrical")
        {
            Session["st"] = "Non Burning Of Street Lights";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 4)
             ec = "Electrical";
        if (ec == "Electrical")
        {
            Session["st"] = "Shifting Of Street Light Pole";
            Response.Redirect("User_Complaint_Form.aspx");
        }

    }
}