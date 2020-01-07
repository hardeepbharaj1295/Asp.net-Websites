using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class postjob : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into postjob values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)", con);
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@c", DropDownList2.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@d", DropDownList3.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@e", DropDownList4.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@f", DropDownList5.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@g", DropDownList6.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@h", DropDownList7.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@i", TextBox2.Text);
        cmd.Parameters.AddWithValue("@j", TextBox10.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Job Is Posted Successfully')</script>");
         TextBox1.Text = "";
         DropDownList1.SelectedIndex = -1;
         DropDownList2.SelectedIndex = -1;
         DropDownList3.SelectedIndex = -1;
         DropDownList4.SelectedIndex = -1;
         DropDownList5.SelectedIndex = -1;
         DropDownList6.SelectedIndex = -1;
         DropDownList7.SelectedIndex = -1;
         TextBox2.Text = "";
        TextBox10.Text = "";
        
        

       
   
    }
    }
