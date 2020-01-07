using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Print_Chalan : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True");
        con.Open();
        if (!IsPostBack)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                String stuid = Request["stuid"].ToString();
                Label1.Text = Request["regid"].ToString();
                Label8.Text = Request["regid"].ToString();
                Label15.Text = Request["regid"].ToString();
                Label2.Text = Request["bnkname"].ToString();
                Label9.Text = Request["bnkname"].ToString();
                Label16.Text = Request["bnkname"].ToString();
                Label22.Text = Request["branch"].ToString();
                Label23.Text = Request["branch"].ToString();
                Label24.Text = Request["branch"].ToString();
                Label3.Text = Request["name"].ToString();
                Label10.Text = Request["name"].ToString();
                Label17.Text = Request["name"].ToString();
                Label4.Text = Request["father"].ToString();
                Label11.Text = Request["father"].ToString();
                Label18.Text = Request["father"].ToString();
                Label5.Text = Request["course"].ToString();
                Label12.Text = Request["course"].ToString();
                Label19.Text = Request["course"].ToString();
                Label6.Text = Request["amount"].ToString();
                Label13.Text = Request["amount"].ToString();
                Label20.Text = Request["amount"].ToString();

                comm = new SqlCommand("insert into Payment values(@a,@b,@c,@d,@e,@f,@g,@h)", con);
                comm.Parameters.AddWithValue("@a", Request["stuid"].ToString());
                comm.Parameters.AddWithValue("@b", Request["regid"].ToString());
                comm.Parameters.AddWithValue("@c", Request["bnkname"].ToString());
                comm.Parameters.AddWithValue("@d", Request["branch"].ToString());
                comm.Parameters.AddWithValue("@e", Request["name"].ToString());
                comm.Parameters.AddWithValue("@f", Request["father"].ToString());
                comm.Parameters.AddWithValue("@g", Request["course"].ToString());
                comm.Parameters.AddWithValue("@h", Request["amount"].ToString());
                comm.ExecuteNonQuery();

                // ok

                comm = new SqlCommand("select fees from CourseFees where course=@a", con);
                comm.Parameters.AddWithValue("@a", Request["course"].ToString());
                object obj1 = comm.ExecuteScalar();
                int fees = Convert.ToInt32(obj1);
                int pay = Convert.ToInt32(Request["amount"].ToString());
                int pending = fees - pay;
                comm = new SqlCommand("select studentid from PayStatus where studentid=@a", con);
                comm.Parameters.AddWithValue("@a", Request["stuid"].ToString());
                object obj = comm.ExecuteScalar();
                if (obj == null)
                {
                    comm = new SqlCommand("insert into PayStatus values(@a,@b,@c,@d,@e)", con);
                    comm.Parameters.AddWithValue("@a", Request["stuid"].ToString());
                    comm.Parameters.AddWithValue("@b", Request["name"].ToString());
                    comm.Parameters.AddWithValue("@c", Request["course"].ToString());
                    comm.Parameters.AddWithValue("@d", pay.ToString());
                    comm.Parameters.AddWithValue("@e", pending.ToString());
                    comm.ExecuteNonQuery();
                }
                else
                {
                    comm = new SqlCommand("select pay from PayStatus where studentid=@a", con);
                    comm.Parameters.AddWithValue("@a", Request["stuid"].ToString());
                    object obj2 = comm.ExecuteScalar();
                    int paying = Convert.ToInt32(obj2);
                    int result = paying + pay;
                    int pendingres = fees - result;
                    comm = new SqlCommand("update PayStatus set pay=@a,pending=@b where studentid=@c", con);
                    comm.Parameters.AddWithValue("@a", result.ToString());
                    comm.Parameters.AddWithValue("@b", pendingres.ToString());
                    comm.Parameters.AddWithValue("@c", Request["stuid"].ToString());
                    comm.ExecuteNonQuery();
                }
            }
        }

    }
}