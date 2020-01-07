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
    SqlDataAdapter da;
    DataView dv = new DataView();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label14.Text = Session["Admin_ID"].ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string select;
        select = Request.Form["RadioButton"];
        Session["Complaint_No"] = select;
        Label2.Text = Session["Complaint_No"].ToString();
        

        //1 Open coding for detail of complaint
        try
        {
            connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";

            query = ("Select *From Complaint_Form where Complaint_No = '" + Label2.Text + "'");

            SqlConnection con = new SqlConnection(connect);
            con.Open();
            da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "virtual");
            dv = new DataView(ds.Tables["virtual"]);
            Session["Detail_of_Complaint"] = ds.Tables[0].Rows[0]["Detail_Of_Complaint"].ToString();        
            con.Close();
        }

        catch (Exception ee)
        {
          
        }

        Response.Redirect("Admin_Complaints1.aspx");
    }

   

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login_Window.aspx");
    }
}