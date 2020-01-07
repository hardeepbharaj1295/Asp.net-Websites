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
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "Select")
        {
            Response.Write("<script>alert('Select Login Type')</script>");
        }
        else if (DropDownList1.SelectedItem.ToString() == "User")
        {
            comm = new SqlCommand("select id from reg where email = @a and password = @b", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", TextBox2.Text);
            Object obj = comm.ExecuteScalar();
            if (obj != null)
            {
                Session["id"] = obj.ToString();
                Session["email"] = TextBox1.Text;
                Response.Redirect("masterhome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password or User id is wrongly enterd')</script>");

            }
        }
        else if (DropDownList1.SelectedItem.ToString() == "Admin")
        {
            comm = new SqlCommand("select id from admin where username = @a and password = @b", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", TextBox2.Text);
            Object obj = comm.ExecuteScalar();
            if (obj != null)
            {
                Session["adminid"] = obj.ToString();
                Response.Redirect("adminHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password or Id is wrongly enterd')</script>");

            }
        }
    }
}