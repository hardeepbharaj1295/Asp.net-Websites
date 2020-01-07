using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class adminHome : System.Web.UI.Page
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
        comm = new SqlCommand("insert into Notification values(@a)", con);
        comm.Parameters.AddWithValue("@a", TextBox1.Text);
        comm.ExecuteNonQuery();
        Response.Write("<script>alert('Message Send Successfully')</script>");
        Response.Redirect("adminHome.aspx");
    }
}