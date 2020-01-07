using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_Default : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename="+Server.MapPath("..\\App_Data\\Database.mdf")+";Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Supplier")
        {
            comm = new SqlCommand("select * from Register where email = @a and password = @b", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", TextBox2.Text);
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.Read())
            {
                Session["id"] = reader[0].ToString();
                Session["userno"] = reader[4].ToString();
                Session["useradd"] = reader[3].ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password or User id is wrongly enterd')</script>");
            }
        }
        else
        {
            comm = new SqlCommand("select id from admin where email = @a and password = @b", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", TextBox2.Text);
            Object obj = comm.ExecuteScalar();
            if (obj != null)
            {
                Session["aid"] = obj.ToString();
                Session["email"] = TextBox1.Text;
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password or User id is wrongly enterd')</script>");

            }
        }
    }
}