using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf")+";Integrated Security=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList2.SelectedItem.ToString()=="Gender")
        {
            Response.Write("<script>alert('Select Gender')</script>");
        }
        else
        {
            comm = new SqlCommand("insert into Register values(@a,@b,@c,@d,@e,@f)", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", TextBox2.Text);
            comm.Parameters.AddWithValue("@c", TextBox3.Text);
            comm.Parameters.AddWithValue("@d", DropDownList1.Text);
            comm.Parameters.AddWithValue("@e", DropDownList2.Text);
            comm.Parameters.AddWithValue("@f", TextBox4.Text);
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('Register Successfully')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Response.Redirect("login.aspx");
        }
        
    }
}