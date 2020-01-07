using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class userHome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True");
        con.Open();
        if (Session["userid"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        comm = new SqlCommand("select * from Register where id=@a", con);
        comm.Parameters.AddWithValue("@a", Session["userid"].ToString());
        SqlDataReader reader = comm.ExecuteReader();
        while (reader.Read())
        {
            Session["name"] = reader[1].ToString();
        }
        Label1.Text = Session["name"].ToString();
    }
}