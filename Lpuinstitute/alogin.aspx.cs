using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class alogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
    }
    protected void button_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("select id from admin where username=@a and password=@b", con);
        comm.Parameters.AddWithValue("@a", username.Text);
        comm.Parameters.AddWithValue("@b", password.Text);
        object obj = comm.ExecuteScalar();
        if (obj != null)
        {
            Session["admin"] = obj;
            Response.Redirect("ahome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Login')</script>");
        }
    }
}