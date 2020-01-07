using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class courseAdd : System.Web.UI.Page
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
        if(FileUpload1.PostedFile.FileName.Contains(".docx"))
        {
            FileUpload1.SaveAs(Server.MapPath("Syllabus/")+TextBox1.Text+".docx");
            comm = new SqlCommand("insert into Courses values(@a,@b)", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", "Syllabus/" + TextBox1.Text+".docx");
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('Subject Added Successfully')</script>");
            TextBox1.Text = "";
            Response.Redirect("courseAdd.aspx");
        }
        else if(FileUpload1.PostedFile.FileName.Contains(".pdf"))
        {
            FileUpload1.SaveAs(Server.MapPath("Syllabus/") + TextBox1.Text + ".pdf");
            comm = new SqlCommand("insert into Courses values(@a,@b)", con);
            comm.Parameters.AddWithValue("@a", TextBox1.Text);
            comm.Parameters.AddWithValue("@b", "Syllabus/" + TextBox1.Text + ".pdf");
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('Subject Added Successfully')</script>");
            TextBox1.Text = "";
            Response.Redirect("courseAdd.aspx");
        }
        else
        {
            Response.Write("<script>alert('Please Select Docx or Pdf File')</script>");
        }
        
    }
}