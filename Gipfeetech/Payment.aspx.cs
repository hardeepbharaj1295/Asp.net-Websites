using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Payment : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True");
        con.Open();
        comm = new SqlCommand("select id from Payment order by id desc",con);
        object obj = comm.ExecuteScalar();
        //Random random = new Random();
        //TextBox2.Text = Convert.ToString(random.Next(10, 200));
        TextBox2.Text = obj.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Print_Chalan.aspx?regid="+TextBox2.Text+"&stuid="+Request["id"]+"&amount="+TextBox3.Text+"&name="+Request["name"]+"&course="+Request["course"]+"&father=" + TextBox1.Text + "&bnkname=" + DropDownList1.Text + "&branch=" + DropDownList2.Text);
    }
}