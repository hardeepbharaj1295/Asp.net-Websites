using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class issuebookteacher : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf;") + "Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into teacher_issue(bookid,email,rollno,issue_date,return_date,fine) values(@a,@b,@c,@d,@e,@f)", con);
        cmd.Parameters.AddWithValue("@a", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@b", Session["teacherid"]);
        cmd.Parameters.AddWithValue("@c", TextBox1.Text);
        cmd.Parameters.AddWithValue("@d", DateTime.Now.ToString("yyyy-MM-dd"));
        cmd.Parameters.AddWithValue("@e", "");
        cmd.Parameters.AddWithValue("@f", "");

        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Data Entered')</script>");
    }
}