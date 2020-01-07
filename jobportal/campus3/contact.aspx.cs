﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename="+Server.MapPath("App_Data\\Database.mdf")+";Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("insert into contact(name,email,message) values(@a,@b,@c)",con);
        comm.Parameters.AddWithValue("@a", TextBox1.Text);
        comm.Parameters.AddWithValue("@b", TextBox2.Text);
        comm.Parameters.AddWithValue("@c", TextBox3.Text);
        comm.ExecuteNonQuery();
        Response.Write("<script>alert('Successfully Submit')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}