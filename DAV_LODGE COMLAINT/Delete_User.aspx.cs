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
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        DataRow dr;
        DataRowCollection drc;
        SqlCommandBuilder common;
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=e:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(connect);
        conn.Open();
        da = new SqlDataAdapter("select * from ulogin", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "ulogin");
        da.FillSchema(ds, SchemaType.Source, "ulogin");
        dt = ds.Tables[0];
        drc = dt.Rows;
        dr = drc.Find(TextBox1.Text);
        dr.Delete();
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        common = new SqlCommandBuilder(da);
        ds.HasChanges();
        da.Update(ds, "ulogin");
        Label5.Text = ("record is deleted");
        Label5.Visible = true;
        conn.Close();


    }
}