using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class OnlinePay : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    String name,course;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True");
        con.Open();
        comm = new SqlCommand("select id from Online order by id desc", con);
        object obj = comm.ExecuteScalar();
        //Random random = new Random();
        //TextBox2.Text = Convert.ToString(random.Next(10, 200));
        TextBox2.Text = obj.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("select * from Register where id=@a",con);
        comm.Parameters.AddWithValue("@a",Session["userid"].ToString());
        SqlDataReader reader = comm.ExecuteReader();
        while(reader.Read())
        {
            name = reader[1].ToString();
            course = reader[4].ToString();
        }
        reader.Close();
        Response.Redirect("Print.aspx?name=" + name + "&id=" + Session["userid"].ToString()+"&course="+course+"&regid="+TextBox2.Text+"&card="+DropDownList1.Text+"&no="+TextBox1.Text+"&amt="+TextBox3.Text);
    }
}