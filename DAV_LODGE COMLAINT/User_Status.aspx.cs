using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    string connect, query;
    SqlDataAdapter da;
    DataView dv = new DataView();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        
        {
            connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";

            query = ("Select *From Remarks where Complaint_No = '" + TextBox1.Text + "'");

            SqlConnection con = new SqlConnection(connect);
            con.Open();
            da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "virtual");
            dv = new DataView(ds.Tables["virtual"]);
            TextBox2.Text = ds.Tables[0].Rows[0]["Remarks"].ToString();
            Label4.Visible = false;
            con.Close();
        }

        catch (Exception ee)
        
        {
            Label4.Visible = true;
            Label4.Text = "Record Not Found";
            TextBox2.Text = " ";
        }

    }
}