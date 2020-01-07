using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string connect, query,query1;
    int count;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label13.Text = Session["user_id"].ToString();
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connect);
        SqlCommand cmd = new SqlCommand("Select count(Complaint_No)from Complaint_Form2", con);
        con.Open();
        count = (int)cmd.ExecuteScalar();
        con.Close();
        count += 1;
        Label12.Text = "SBCN00"+count.ToString();
        //Label4.Text = "" + count;
        //Label5.Text = count.ToString();
        //Label5.Text = "" + count;

        Label11.Text = DateTime.Now.ToString("d");
        Label10.Text = Session["C_Types"].ToString();
        Label9.Text = Session["st"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";

        string Complaint_No, Complaint_Date, Complaint_Type, Complaint_Sub_Type, Detail_Of_Complaint;

        Complaint_No = Label12.Text;
        Complaint_Date = Label11.Text;
        Complaint_Type = Label10.Text;
        Complaint_Sub_Type = Label9.Text;
        Detail_Of_Complaint = TextBox5.Text;

        query = "Insert into Complaint_Form values('" + Complaint_No + "','" + Complaint_Date + "','" + Complaint_Type + "','" + Complaint_Sub_Type + "','" + Detail_Of_Complaint + "')";
        SqlConnection con = new SqlConnection(connect);
        SqlCommand cmd = new SqlCommand(query);
        con.Open();
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        this.Dispose();


        query1 = "Insert into Complaint_Form2 values('" + Complaint_No + "')";
        SqlConnection con1 = new SqlConnection(connect);
        SqlCommand cmd1 = new SqlCommand(query1);
        con1.Open();
        cmd1.Connection = con1;
        cmd1.ExecuteNonQuery();
        con1.Close();
        cmd1.Dispose();
        this.Dispose();



        Session["Detail_Of_Complaint"] = TextBox5.Text;
        Response.Redirect("User_Thanks.aspx");

    }
}