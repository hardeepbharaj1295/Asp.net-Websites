using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    string connect, query;
    SqlDataAdapter da;
    DataView dv = new DataView();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
            query = ("select * from ulogin where ANS='" + TextBox2.Text + "' and User_id = '" + TextBox1.Text + "'");

            SqlConnection con = new SqlConnection(connect);
            con.Open();
            da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "virtual");
            dv = new DataView(ds.Tables["virtual"]);
            Label5.Text = ds.Tables[0].Rows[0]["password"].ToString();

            Label5.Visible = true;
            con.Close();

        }
        catch (Exception ee)
        {
            Label5.Visible = true;
            Label5.Text = "Wrong Answer";
         }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
            query = ("select * from ulogin where User_id = '" + TextBox1.Text + "'");

            SqlConnection con = new SqlConnection(connect);
            con.Open();
            da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "virtual");
            dv = new DataView(ds.Tables["virtual"]);
            Label6.Text = ds.Tables[0].Rows[0]["SQUN"].ToString();

            Label6.Visible = true;
            con.Close();
        }
        catch (Exception ee)
        {
            Label5.Visible = false;
            Label6.Visible = false;
            Label3.Visible = true;
            Label3.Text = "Record Not Found";

        }

    }
}