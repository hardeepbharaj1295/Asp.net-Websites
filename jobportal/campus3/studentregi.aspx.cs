using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename="+Server.MapPath("App_Data\\Database.mdf;")+"Integrated Security=True;User Instance=True");
       con.Open();
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         cmd=new SqlCommand("insert into sturegi values(@a,@l,@b,@c,@d,@e,@k,@f,@g,@i,@j)",con);
         cmd.Parameters.AddWithValue("@a",TextBox1.Text);
         cmd.Parameters.AddWithValue("@l", TextBox2.Text);
         cmd.Parameters.AddWithValue("@b",TextBox12.Text);
         cmd.Parameters.AddWithValue("@c",TextBox8.Text);
         cmd.Parameters.AddWithValue("@d",RadioButtonList1.SelectedItem.Text);
         cmd.Parameters.AddWithValue("@e",TextBox7.Text);
         cmd.Parameters.AddWithValue("@k", TextBox3.Text);
         cmd.Parameters.AddWithValue("@f",TextBox4.Text);
         cmd.Parameters.AddWithValue("@g",TextBox5.Text);
         cmd.Parameters.AddWithValue("@i",TextBox6.Text);
         cmd.Parameters.AddWithValue("@j",TextBox9.Text);
         cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Registered Successfully')</script>");
        TextBox1.Text="";
        TextBox2.Text ="";
        TextBox12.Text="";
        TextBox8.Text="";
        RadioButtonList1.SelectedIndex = -1;
        TextBox7.Text = "";
        TextBox3.Text="";
        TextBox4.Text="";
        TextBox5.Text="";
        TextBox6.Text="";
        TextBox9.Text="";
     
    }
}