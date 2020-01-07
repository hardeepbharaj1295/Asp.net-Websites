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
    string connect, query, connect1, query1,connect3;
    SqlDataAdapter da;
    DataView dv = new DataView();

    protected void Page_Load(object sender, EventArgs e)
    {
       Label2.Text = Session["Complaint_No"].ToString();
       Label7.Text = Session["Detail_Of_Complaint"].ToString();
       Label14.Text = Session["Admin_ID"].ToString();
    }
    
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        //1 Remark Submit Coding
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";

        string Complaint_No, Remarks;

        Complaint_No = Label2.Text;
        Remarks = TextBox2.Text;

        query = "Insert into Remarks values('" + Complaint_No + "','" + Remarks + "')";
        SqlConnection con = new SqlConnection(connect);
        SqlCommand cmd = new SqlCommand(query);
        con.Open();
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        Label5.Visible = true;
        Label5.Text = "Remarks is Submitted";
        this.Dispose();
       



        //2 Open Coding
        string Complaint_Date, Complaint_Type, Complaint_Sub_Type, Detail_Of_Complaint;
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";

        query = ("Select *From Complaint_Form where Complaint_No = '" + Label2.Text + "'");

        SqlConnection con1 = new SqlConnection(connect);
        con1.Open();
        da = new SqlDataAdapter(query, con1);
        DataSet ds = new DataSet();
        da.Fill(ds, "virtual");
        dv = new DataView(ds.Tables["virtual"]);

        Complaint_No = ds.Tables[0].Rows[0]["Complaint_No"].ToString();
        Complaint_Date = ds.Tables[0].Rows[0]["Complaint_Date"].ToString();
        Complaint_Type = ds.Tables[0].Rows[0]["Complaint_Type"].ToString();
        Complaint_Sub_Type = ds.Tables[0].Rows[0]["Complaint_Sub_Type"].ToString();
        Detail_Of_Complaint = ds.Tables[0].Rows[0]["Detail_Of_Complaint"].ToString();
       // Label3.Visible = false;
        con.Close();


               
       //3 Insert Coding 
        query1 = "Insert into Complaint_Form1 values('" + Complaint_No + "','" + Complaint_Date + "','" + Complaint_Type + "','" + Complaint_Sub_Type + "','" + Detail_Of_Complaint + "')";
        SqlConnection conn = new SqlConnection(connect);
        SqlCommand cmd1 = new SqlCommand(query1);
        conn.Open();
        cmd1.Connection = conn;
        cmd1.ExecuteNonQuery();
        conn.Close();
        cmd1.Dispose();
        this.Dispose();


        //4 delete coding for deleting complaint data form table
        DataTable dt;
        DataRow dr;
        DataRowCollection drc;
        SqlCommandBuilder common;
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=e:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con2 = new SqlConnection(connect);
        con2.Open();
        da = new SqlDataAdapter("Select *From Complaint_Form where Complaint_No='" + Label2.Text + "'", con2);


        DataSet ds2 = new DataSet();
        da.Fill(ds2, "Complaint_Form");
        da.FillSchema(ds2, SchemaType.Source, "Complaint_Form");
        dt = ds2.Tables[0];
        drc = dt.Rows;
        dr = drc.Find(Label2.Text);
        dr.Delete();
      
        
        common = new SqlCommandBuilder(da);
        ds2.HasChanges();
        da.Update(ds2, "Complaint_Form");
        con.Close();
        Response.Redirect("Admin_Complaints.aspx");
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login_Window.aspx");
    }
}