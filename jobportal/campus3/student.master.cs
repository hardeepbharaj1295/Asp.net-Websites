﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Student"] == null)
        {
            Response.Redirect("Default.aspx");
            
        }
        //Labels.Text = "Welcome :- "+Session["Student"].ToString();
    }
}