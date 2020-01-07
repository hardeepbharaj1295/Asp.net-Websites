using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class admin_AddProduct : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("..\\App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            FileUpload1.SaveAs(Server.MapPath("Products/") + FileUpload1.FileName.ToString());
            comm = new SqlCommand("insert into product values(@a,@b,@c,@d,@e)", con);
            comm.Parameters.AddWithValue("@a", DropDownList1.Text);    
            comm.Parameters.AddWithValue("@b", TextBox1.Text);
            comm.Parameters.AddWithValue("@c", "Products/" + FileUpload1.FileName.ToString());        
            comm.Parameters.AddWithValue("@d", TextBox3.Text);
            comm.Parameters.AddWithValue("@e", TextBox2.Text);
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('Added Succesfull')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        
    }
}