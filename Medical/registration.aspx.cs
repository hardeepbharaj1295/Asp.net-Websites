using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
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
            Response.Write("<script>alert('Select Gender')</script>");
        }
        else if (DropDownList2.SelectedItem.ToString() == "Select")
        {
            Response.Write("<script>alert('Select Married Status')</script>");
        }
        else if (TextBox9.Text != TextBox10.Text)
        {
            Response.Write("<script>alert('Re-Confirm password')</script>");
        }
        else
        {
            comm = new SqlCommand("insert into reg values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", TextBox2.Text);
            comm.Parameters.AddWithValue("@c", TextBox3.Text);
            comm.Parameters.AddWithValue("@d", DropDownList1.Text);
            comm.Parameters.AddWithValue("@e", TextBox5.Text);
            comm.Parameters.AddWithValue("@f", TextBox6.Text);
            comm.Parameters.AddWithValue("@g", TextBox7.Text);
            comm.Parameters.AddWithValue("@h", TextBox8.Text);
            comm.Parameters.AddWithValue("@i", DropDownList2.Text);
            comm.Parameters.AddWithValue("@j", TextBox9.Text);
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('Register Successfull')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = " ";
        }
    }
}