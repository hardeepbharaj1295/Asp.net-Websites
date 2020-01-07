using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Studentdetail : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True");
        con.Open();
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx?id=" + GridView1.SelectedRow.Cells[0].Text + "&name=" + GridView1.SelectedRow.Cells[1].Text + "&course=" + GridView1.SelectedRow.Cells[4].Text);
    }
}