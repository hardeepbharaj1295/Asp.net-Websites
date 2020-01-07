using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Print : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();

        comm = new SqlCommand("select * from Booking where userno=@a",con);
        comm.Parameters.AddWithValue("@a",Session["userno"].ToString());
        SqlDataReader reader = comm.ExecuteReader();
        if (reader.Read())
        {
            Label1.Text = Session["usernm"].ToString();
            Label2.Text = Session["useradd"].ToString();
            Label3.Text = reader[2].ToString();
            Label4.Text = reader[3].ToString();
        }
    }

}