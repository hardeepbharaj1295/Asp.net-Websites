using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Donate : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "Select")
        {
            Response.Write("<script>alert('Select Blood Group')</script>");
        }
        else if (DropDownList2.SelectedItem.ToString() == "Select")
        {
            Response.Write("<script>alert('Select Gender')</script>");
        }
        else
        {
            comm = new SqlCommand("insert into donate values(@a,@b,@c,@d,@e,@f,@g)", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", DropDownList1.Text);
            comm.Parameters.AddWithValue("@c", TextBox2.Text);
            comm.Parameters.AddWithValue("@d", TextBox3.Text);
            comm.Parameters.AddWithValue("@e", TextBox4.Text);
            comm.Parameters.AddWithValue("@f", DropDownList2.Text);
            comm.Parameters.AddWithValue("@g", Session["id"]);
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('Added Succesfull')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}