using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Print : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    static int z = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        z=z+1;
         con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True");
        con.Open();
        if(!IsPostBack)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                String stuid = Session["userid"].ToString();
                Label1.Text = Request["regid"].ToString();
                Label8.Text = Request["amt"].ToString();
                Label2.Text = DateTime.Now.ToString("dd/MM/yyyy");
                Label3.Text = Request["name"].ToString();
                Label4.Text = Request["amt"].ToString();
                // Label5.Text = Request["course"].ToString();
                Label6.Text = DateTime.Now.ToString("dd/MM/yyyy");
                Label7.Text = Request["course"].ToString();

                comm = new SqlCommand("insert into Online values(@a,@b,@c,@d,@e,@f,@g,@h)", con);
                comm.Parameters.AddWithValue("@a", Session["userid"].ToString());
                comm.Parameters.AddWithValue("@b", Request["regid"].ToString());
                comm.Parameters.AddWithValue("@c", Request["name"].ToString());
                comm.Parameters.AddWithValue("@d", Request["course"].ToString());
                comm.Parameters.AddWithValue("@e", Request["no"].ToString());
                comm.Parameters.AddWithValue("@f", Request["card"].ToString());
                comm.Parameters.AddWithValue("@g", Request["amt"].ToString());
                comm.Parameters.AddWithValue("@h", DateTime.Now.ToString("dd/MM/yyyy"));
                comm.ExecuteNonQuery();

                // ok

                comm = new SqlCommand("select fees from CourseFees where course=@a", con);
                comm.Parameters.AddWithValue("@a", Request["course"].ToString());
                object obj1 = comm.ExecuteScalar();
                int fees = Convert.ToInt32(obj1);
                int pay = Convert.ToInt32(Request["amt"].ToString());
                int pending = fees - pay;
                comm = new SqlCommand("select studentid from PayStatus where studentid=@a", con);
                comm.Parameters.AddWithValue("@a", Session["userid"].ToString());
                object obj = comm.ExecuteScalar();
                if (obj == null)
                {
                    comm = new SqlCommand("insert into PayStatus values(@a,@b,@c,@d,@e)", con);
                    comm.Parameters.AddWithValue("@a", Session["userid"].ToString());
                    comm.Parameters.AddWithValue("@b", Request["name"].ToString());
                    comm.Parameters.AddWithValue("@c", Request["course"].ToString());
                    comm.Parameters.AddWithValue("@d", pay.ToString());
                    comm.Parameters.AddWithValue("@e", pending.ToString());
                    comm.ExecuteNonQuery();
                }
                else
                {
                    comm = new SqlCommand("select pay from PayStatus where studentid=@a", con);
                    comm.Parameters.AddWithValue("@a", Session["userid"].ToString());
                    object obj2 = comm.ExecuteScalar();
                    int paying = Convert.ToInt32(obj2);
                    int result = paying + pay;
                    int pendingres = fees - result;
                    comm = new SqlCommand("update PayStatus set pay=@a,pending=@b where studentid=@c", con);
                    comm.Parameters.AddWithValue("@a", result.ToString());
                    comm.Parameters.AddWithValue("@b", pendingres.ToString());
                    comm.Parameters.AddWithValue("@c", Session["userid"].ToString());
                    comm.ExecuteNonQuery();
                }
            }
        }
    }
}