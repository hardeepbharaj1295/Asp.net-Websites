using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class addsubject : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("subjectimg/") + FileUpload1.FileName.ToString());
        comm = new SqlCommand("insert into subimage values(@a,@b)",con);
        comm.Parameters.AddWithValue("@a",subject.Text);
        comm.Parameters.AddWithValue("@b", FileUpload1.FileName.ToString());
        comm.ExecuteNonQuery();
        Response.Write("<script>alert('Image Upload Successfully')</script>");
        subject.Text = "";
    }
}