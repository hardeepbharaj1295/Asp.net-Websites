using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("insert into Contact values(@a,@b,@c,@d)", con);
        comm.Parameters.AddWithValue("@a", TextBox1.Text);
        comm.Parameters.AddWithValue("@b", TextBox3.Text);
        comm.Parameters.AddWithValue("@c", TextBox2.Text);
        comm.Parameters.AddWithValue("@d", TextBox4.Text);
        comm.ExecuteNonQuery();
        Response.Write("<script>alert('Submit Succesfull')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}