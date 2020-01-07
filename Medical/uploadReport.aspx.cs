using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class uploadReport : System.Web.UI.Page
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
        FileUpload1.SaveAs(Server.MapPath("reports/")+FileUpload1.FileName.ToString());

        comm = new SqlCommand("insert into Report values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k)", con);
        comm.Parameters.AddWithValue("@a", Request["id"].ToString());
        comm.Parameters.AddWithValue("@b", TextBox1.Text);
        comm.Parameters.AddWithValue("@c", TextBox2.Text);
        comm.Parameters.AddWithValue("@d", TextBox3.Text);
        comm.Parameters.AddWithValue("@e", TextBox4.Text);
        comm.Parameters.AddWithValue("@f", TextBox5.Text);
        comm.Parameters.AddWithValue("@g", TextBox6.Text);
        comm.Parameters.AddWithValue("@h", TextBox7.Text);
        comm.Parameters.AddWithValue("@i", TextBox8.Text);
        comm.Parameters.AddWithValue("@j", TextBox9.Text);
        comm.Parameters.AddWithValue("@k","reports/"+FileUpload1.FileName);
        comm.ExecuteNonQuery();
        Response.Write("<script>alert('Report Upload Succesfull')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
}