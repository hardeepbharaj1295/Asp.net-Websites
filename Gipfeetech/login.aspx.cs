using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("select id from Register where email=@a and password=@b", con);
        comm.Parameters.AddWithValue("@a", TextBox1.Text);
        comm.Parameters.AddWithValue("@b", TextBox2.Text);
        object obj = comm.ExecuteScalar();
        if(obj != null)
        {
            Session["userid"] = obj.ToString();
            Response.Redirect("userHome.aspx");
        }
        else
        {
            Response.Write("<script>alert('You Entered wrong username/password')</script>");
        }
        
    }
}