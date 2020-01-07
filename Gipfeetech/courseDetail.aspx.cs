using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class courseDetail : System.Web.UI.Page
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
        comm = new SqlCommand("insert into CourseFees values(@a,@b)", con);
        comm.Parameters.AddWithValue("@a", DropDownList1.Text.ToString());
        comm.Parameters.AddWithValue("@b", TextBox1.Text);
        comm.ExecuteNonQuery();

        TextBox1.Text = "";
        Response.Redirect("courseDetail.aspx");
    }
}