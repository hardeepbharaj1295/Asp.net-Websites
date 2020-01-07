using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string ct;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user_id"].ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
            ct = "General";
        if (ct == "General")
        {
            Session["C_Types"] = "General";
            Response.Redirect("General.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 1)
        ct = "Health";
        if (ct == "Health")
        {
            Session["C_Types"] = "Health";
            Response.Redirect("Health.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 2)
        ct = "Solid_Waste_Management";
        if (ct == "Solid_Waste_Management")
        {
            Session["C_Types"] = "Solid_Waste_Management";
            Response.Redirect("Solid_Waste_Management.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 3)
        ct = "Education";
        if (ct == "Education")
        {
            Session["C_Types"] = "Education";
            Response.Redirect("Education.aspx");
        }

        

        if (RadioButtonList1.SelectedIndex == 4)
        ct = "Revenue";
        if (ct == "Revenue")
        {
            Session["C_Types"] = "Revenue";
            Response.Redirect("Revenue.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 5)
        ct = "Election";
        if (ct == "Election")
        {
            Session["C_Types"] = "Election";
            Response.Redirect("Election.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 6)
        ct = "Electrical";
        if (ct == "Electrical")
        {
            Session["C_Types"] = "Electrical";
            Response.Redirect("Electrical.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 7)
        ct = "Enginering";
        if (ct == "Enginering")
        {
            Session["C_Types"] = "Enginering";
            Response.Redirect("Enginering.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 8)
        ct = "Others";
        if (ct == "Others")
        {
            Session["C_Types"] = "Others";
            Response.Redirect("Others.aspx");
        }
            
    }


}