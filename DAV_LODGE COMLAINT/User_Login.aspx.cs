using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string connect;
    SqlConnection conn;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["User_id"] = TextBox1.Text;
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=e:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
        conn = new SqlConnection(connect);
        int count;
        SqlConnection con = new SqlConnection(connect);
        DataSet ds = new DataSet();
        da = new SqlDataAdapter("select * from ulogin where User_id = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'", con);
        da.Fill(ds);
        count = ds.Tables[0].Rows.Count;
        if (count == 0)
        {
            Label3.Visible = true;
            Label3.Text = "Invalid Password or User ID";
        }
        else
        {
            Response.Redirect("Complaint_Person_Detail.aspx");
        }
        
    }

    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgot_password.aspx");
    }
   
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Create_An_Account.aspx");
    }
}
