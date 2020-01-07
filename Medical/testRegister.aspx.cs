using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class testRegister : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    String a, b, c, d, f;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();
        if (Session["id"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        comm = new SqlCommand("select * from reg where id=@a",con);
        comm.Parameters.AddWithValue("@a", Session["id"].ToString());
        SqlDataReader reader = comm.ExecuteReader();
        while (reader.Read())
        {
            a=reader[1].ToString();
            b=reader[2].ToString();
            c=reader[3].ToString();
            d=reader[4].ToString();
            f=reader[6].ToString()+"/"+reader[7].ToString()+"/"+reader[8].ToString();
        }
        reader.Close();
        comm = new SqlCommand("insert into Testing values(@a,@b,@c,@d,@e,@f,@g,@h)",con);
        comm.Parameters.AddWithValue("@a",Session["id"].ToString());
        comm.Parameters.AddWithValue("@b",a);
        comm.Parameters.AddWithValue("@c",b);
        comm.Parameters.AddWithValue("@d",c);
        comm.Parameters.AddWithValue("@e",d);
        comm.Parameters.AddWithValue("@f",f);
        comm.Parameters.AddWithValue("@g",DropDownList1.Text);
        comm.Parameters.AddWithValue("@h",DateTime.Now.ToString("dd/MM/yyyy"));
        comm.ExecuteNonQuery();
        Response.Write("<script>alert('Register Successfully')</script>");
    }
}