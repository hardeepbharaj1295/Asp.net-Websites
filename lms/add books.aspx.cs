using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class add_books : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename="+Server.MapPath("App_Data\\Database.mdf;")+"Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into add_books1(bookid,title,authorname,publisher,cost,quanity) values(@a,@b,@c,@d,@e,@f)",con);
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", TextBox2.Text);
        cmd.Parameters.AddWithValue("@c", TextBox3.Text);
        cmd.Parameters.AddWithValue("@d", TextBox4.Text);
        cmd.Parameters.AddWithValue("@e", TextBox5.Text);
        cmd.Parameters.AddWithValue("@f", TextBox6.Text);
       
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Data Entered')</script>");

    }
}