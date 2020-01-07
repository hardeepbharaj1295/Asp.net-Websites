using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CmpnyContactUs : System.Web.UI.Page
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
        String returns = DateTime.Now.ToString("yyyy-MM-dd");
        cmd = new SqlCommand("insert into smscmpny values(@a,@b,@c,@d)", con);
        cmd.Parameters.AddWithValue("@a", Session["Company"].ToString());
        cmd.Parameters.AddWithValue("@b", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@c", TextBox12.Text);
        cmd.Parameters.AddWithValue("@d", returns);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('MESSAGE SENT')</script>");
        TextBox12.Text = "";
        DropDownList1.SelectedIndex = -1;
    }
}