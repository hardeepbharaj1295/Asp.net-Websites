using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Sendmsg : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into sendmsg values(@a,@b)", con);
        cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@b",TextBox12.Text );
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('MESSAGE SENT')</script>");
            TextBox12.Text ="";
        DropDownList1.SelectedIndex = -1;
        

    }
}