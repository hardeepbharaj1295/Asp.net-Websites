using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string connect, query;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";

        string Name, E_Mail_ID, Contact_No, Remarks;

        Name = TextBox1.Text;

        E_Mail_ID = TextBox2.Text;

        Contact_No = TextBox3.Text;

        Remarks = TextBox4.Text;
        
        query = "Insert into Suggest values('" + Name + "','" + E_Mail_ID + "','" + Contact_No + "','" + Remarks + "')";
        SqlConnection con = new SqlConnection(connect);
        SqlCommand cmd = new SqlCommand(query);
        con.Open();
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        Label7.Visible = true;
        Label7.Text = "Querie is Submitted";
        this.Dispose();
      //  Response.Redirect("Home.aspx");
    }
}