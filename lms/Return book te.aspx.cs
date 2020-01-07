using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Return_book_te : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf;") + "Integrated Security=True;User Instance=True");
        con.Open();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String issue = null;
        cmd = new SqlCommand("select issue_date from teacher_issue where bookid=@a and rollno=@b", con);
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", TextBox2.Text);
        object obj = cmd.ExecuteScalar();
        if (obj != null)
        {
            issue = obj.ToString();

        }
        else
        {

            Response.Write("<script>alert('invalid ')</script>");
        }

        String returns = DateTime.Now.ToString("yyyy-MM-dd");

        double res = (DateTime.Parse(returns) - DateTime.Parse(issue)).TotalDays;
        Response.Write(res.ToString());
        double fine = 0;
        if (res > 14)
        {
            fine = res - 14;
        }

        cmd = new SqlCommand("update teacher_issue set return_date=@a,fine=@b where bookid=@c and rollno=@d", con);
        cmd.Parameters.AddWithValue("@a", returns);
        cmd.Parameters.AddWithValue("@b", fine.ToString());
        cmd.Parameters.AddWithValue("@c", TextBox1.Text);
        cmd.Parameters.AddWithValue("@d", TextBox2.Text);
        cmd.ExecuteNonQuery();
    }
}