using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class updateAdminpass : System.Web.UI.Page
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
        String pass, copass;
        pass = TextBox2.Text;
        copass = TextBox3.Text;
        comm = new SqlCommand("select id from admin where id='" + Session["id"] + "' and password=@a", con);
        comm.Parameters.AddWithValue("@a", TextBox1.Text);
        object obj = comm.ExecuteScalar();
        if(obj==null)
        {
            Response.Write("<script>alert('you Enter wrong Password')</script>");
        }
        else if(!pass.Equals(copass))
        {
            Response.Write("<script>alert('Password not match')</script>");
        }
        else
        {
            comm = new SqlCommand("update Admin set password=@a where id=@b",con);
            comm.Parameters.AddWithValue("@a", TextBox2.Text);
            comm.Parameters.AddWithValue("@b", Session["id"].ToString());
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('Password Update Successfully')</script>");
            Response.Redirect("updateAdminpass.aspx");
        }
    }
}