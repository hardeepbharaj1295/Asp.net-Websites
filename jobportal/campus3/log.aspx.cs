using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class log : System.Web.UI.Page
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
        if (DropDownList2.SelectedValue == "Admin")
        {
            cmd = new SqlCommand("select username from admin where username=@a and password = @b", con);
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            object obj = cmd.ExecuteScalar();
            if (obj != null)
            {
                Session["Admin"] = obj.ToString();
                Response.Redirect("Sendmsg.aspx");
            }
            else
            {

                Response.Write("invalid login");
            }
        }
        else if (DropDownList2.SelectedValue == "Company")
        {
            cmd = new SqlCommand("select user_name from companyregi where User_name=@a and Password = @b", con);
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            object obj = cmd.ExecuteScalar();
            if (obj != null)
            {
                Session["Company"] = obj.ToString();
                Response.Redirect("postjob.aspx");
            }
            else
            {

                Response.Write("invalid login");
            }
        }
        else if (DropDownList2.SelectedValue == "Student")
        {
            cmd = new SqlCommand("select username from sturegi where Username=@a and Password=@b", con);
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            object obj = cmd.ExecuteScalar();
            if (obj != null)
            {
                Session["Student"] = obj.ToString();
                Response.Redirect("stucompany.aspx");
            }
            else
            {
                Response.Write("Invalid Login");
            }
        }
    }
}