using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=. \\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf;") + "Integrated Security=True;User Instance= True");
        con.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into register values(@a,@b,@c,@d,@e,@f,@g,@h,@i)", con);
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", TextBox2.Text);
        cmd.Parameters.AddWithValue("@c", TextBox3.Text);
        cmd.Parameters.AddWithValue("@d", RadioButtonList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@e", TextBox4.Text);
        cmd.Parameters.AddWithValue("@f", TextBox5.Text);
        cmd.Parameters.AddWithValue("@g", TextBox6.Text);
        cmd.Parameters.AddWithValue("@h", TextBox7.Text);
        cmd.Parameters.AddWithValue("@i", TextBox8.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('You are registered successfully')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        RadioButtonList1.SelectedIndex = -1;
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";



    }
}