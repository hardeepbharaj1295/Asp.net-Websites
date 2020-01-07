using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    string eng;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user_id"].ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
             eng = "Enginering";
        if (eng == "Enginering")
        {
            Session["st"] = "Cleaning Of Water Table";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 1)
            eng = "Enginering";
        if (eng == "Enginering")
        {
            Session["st"] = "Complaints Regarding Park";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 2)
            eng = "Enginering";
        if (eng == "Enginering")
        {
            Session["st"] = "Complaints Regarding Play Groups";
            Response.Redirect("User_Complaint_Form.aspx");
        }
        if (RadioButtonList1.SelectedIndex == 3)
            eng = "Enginering";
        if (eng == "Enginering")
        {
            Session["st"] = "Removal Of Shops In The Footpath";
            Response.Redirect("User_Complaint_Form.aspx");
        }

        if (RadioButtonList1.SelectedIndex == 4)
            eng = "Enginering";
        if (eng == "Enginering")
        {
            Session["st"] = "Overhead Cable Wires Running In Hapazard Manner";
            Response.Redirect("User_Complaint_Form.aspx");
        }
    }
}