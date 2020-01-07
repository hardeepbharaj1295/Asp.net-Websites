using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string ht;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["User_id"].ToString();
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
            ht = "Health";
        if (ht == "Health")
        {
            Session["st"] = "Complaints Regarding Cleaniness of Toilets In shopping Complex";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 1)
            ht = "Health";
        if (ht == "Health")
        {
            Session["st"] = "Complaints Regarding Dispensary";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 2)
            ht = "Health";
        if (ht == "Health")
        {
            Session["st"] = "Complaints Regarding Public Tolets";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 3)
            ht = "Health";
        if (ht == "Health")
        {
            Session["st"] = "Public Health/Dangue/Malaria/Gastro Enterietis";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 4)
            ht = "Health";
        if (ht == "Health")
        {
            Session["st"] = "Dogmenace";
            Response.Redirect("User_Complaint_Form.aspx");
        }


        if (RadioButtonList1.SelectedIndex == 5)
            ht = "Health";
        if (ht == "Health")
        {
            Session["Health"] = "Mosquitomenace";
            Response.Redirect("User_Complaint_Form.aspx");
        }
    }
}