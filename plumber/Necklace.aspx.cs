﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Necklace : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();

        comm = new SqlCommand("select * from Products where type=@a and request=@b", con);
        comm.Parameters.AddWithValue("@a", "Doctor");
        comm.Parameters.AddWithValue("@b", "Accept");
        SqlDataReader reader = comm.ExecuteReader();
        while (reader.Read())
        {
            img.InnerHtml += "<tr><td colspan='5'><hr size='5' style='border-top: 4px solid;border-color:#aa6c09;'/></td></tr><tr><td><img width='100' height='100' src='Admin/" + reader[2].ToString() + "' ></img></td><td>" + reader[1].ToString() + "</td><td>" + reader[5].ToString() + "</td><td>" + reader[4].ToString() + "</td>";
        }
        reader.Close();
    }
}