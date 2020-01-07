using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class teacherlogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf;") + "Integrated Security=True;User Instance=True");
        con.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("select email from teacher where email = @a and password = @b", con);
        comm.Parameters.AddWithValue("@a", TextBox1.Text);
        comm.Parameters.AddWithValue("@b", TextBox2.Text);
        Object obj = comm.ExecuteScalar();
        if (obj != null)
        {
            Session["teacherid"] = obj.ToString();
            Response.Redirect("issuebookteacher.aspx");
        }
        else
        {
            Response.Write("<script>alert('Password or Id is wrongly enterd')</script>");

        }
    }
}