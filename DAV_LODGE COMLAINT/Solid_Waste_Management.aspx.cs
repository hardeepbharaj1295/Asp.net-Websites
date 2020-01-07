using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string sw;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user_id"].ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
            sw = "Solid_Waste_Management";
        if (sw == "Solid_Waste_Management")
        {
            Session["st"] = "Abseteesim Of Door To Door Garbage Collector";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 1)
            sw = "Solid_Waste_Management";
        if (sw == "Solid_Waste_Management")
        {
            Session["st"] = "Abseteesim Of Sweepers";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 2)
            sw = "Solid_Waste_Management";
        if (sw == "Solid_Waste_Management")
        {
            Session["st"] = "Burning Of Garbage";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 3)
            sw = "Solid_Waste_Management";
        if (sw == "Solid_Waste_Management")
        {
            Session["st"] = "Overflowing Of Garbage Bims";
            Response.Redirect("User_Complaint_Form.aspx");
        }
    }
}