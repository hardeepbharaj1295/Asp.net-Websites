using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
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
        string ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);

        if ((ext == ".pdf") || (ext == ".doc") || (ext == ".docx"))
        {
            FileUpload1.SaveAs(Server.MapPath("resume/" + FileUpload1.FileName.ToString()));
            cmd = new SqlCommand("insert into addedu values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)", con);
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            cmd.Parameters.AddWithValue("@c", TextBox3.Text);
            cmd.Parameters.AddWithValue("@d", TextBox4.Text);
            cmd.Parameters.AddWithValue("@e", TextBox5.Text);
            cmd.Parameters.AddWithValue("@f", TextBox6.Text);
            cmd.Parameters.AddWithValue("@g", TextBox7.Text);
            cmd.Parameters.AddWithValue("@h", "resume/" + FileUpload1.FileName.ToString());
            cmd.Parameters.AddWithValue("@i", Request["id"].ToString());
            cmd.Parameters.AddWithValue("@j", Session["Student"].ToString());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Registered Successfully')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }
        else
        {
            Response.Write("<script>alert('PLease Select .doc or .pdf file')</script>");
        }
    }
}