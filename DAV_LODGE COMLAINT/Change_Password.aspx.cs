using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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
        string connect;
        DataTable dt;
        DataRow dr;
        DataRowCollection drc;
        SqlCommandBuilder common;
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=e:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connect);
        con.Open();
        da = new SqlDataAdapter("select * from ulogin where user_id='" + TextBox5.Text + "'", con);

       
        DataSet ds = new DataSet();
        da.Fill(ds, "ulogin");
        da.FillSchema(ds, SchemaType.Source, "ulogin");
        dt = ds.Tables[0];
        drc = dt.Rows;
        dr = drc.Find(TextBox4.Text);
        dr.BeginEdit();
        dr[3] = TextBox4.Text;
        
        dr.EndEdit();
        common = new SqlCommandBuilder(da);
        ds.HasChanges();
        da.Update(ds, "ulogin");


        Label6.Text = ("User Is Updated");
        Label6.Visible = true;
        con.Close();

    }
}