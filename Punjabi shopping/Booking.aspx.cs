using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Booking : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();
        if (Session["id"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("insert into Booking values(@a,@b,@c,@d,@e,@f,@g,@h)", con);
        comm.Parameters.AddWithValue("@a", Request["id"].ToString());
        comm.Parameters.AddWithValue("@b", Request["name"].ToString());
        comm.Parameters.AddWithValue("@c", Request["price"].ToString());
        comm.Parameters.AddWithValue("@d", Session["id"].ToString());
        comm.Parameters.AddWithValue("@e", Session["userno"].ToString());
        comm.Parameters.AddWithValue("@f", Session["useradd"].ToString());
        comm.Parameters.AddWithValue("@g", RadioButtonList1.SelectedItem.Text);
        comm.Parameters.AddWithValue("@h", TextBox2.Text);
        comm.ExecuteNonQuery();
       // Response.Write("<script>alert('Booking Succesfull')</script>");
        Response.Redirect("Print.aspx");
    }
}