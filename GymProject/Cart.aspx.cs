using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Cart : System.Web.UI.Page
{
    SqlCommand comm;
    SqlCommand comm1;
    SqlConnection con;
    public static ArrayList a = new ArrayList();
    public static int total = 0;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        total = 0;
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();

        if (Session["id"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        if (Request.QueryString["remove"] != null && Request.QueryString.Count > 0)
        {
            if (a.Count > 0)
            {
                string value = Request["remove"].ToString();
                a.RemoveAt(Convert.ToInt32(value));
            }
        }

        if (Request.QueryString["id"] != null && Request.QueryString.Count > 0)
        {
            string value = Request["id"].ToString();
            a.Add(value);
        }

        for (int i = 0; i < a.Count; i++)
        {
            comm = new SqlCommand("select * from product where id=@a", con);
            comm.Parameters.AddWithValue("@a", a[i].ToString());

            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                int t = Convert.ToInt32(reader[4].ToString());
                total += t;
                cart.InnerHtml += "<tr><td data-th='Product'><div class='row'><div class='col-sm-2 hidden-xs'><img src='Admin/" + reader[3].ToString() + "' alt='...' class='img-responsive'/></div><div class='col-sm-10'><h4 class='nomargin'>" + reader[2].ToString() + "</h4><p>" + reader[5].ToString() + "</p></div></div></td><td data-th='Price'>" + reader[4].ToString() + "</td><td data-th='Quantity'><p>1</p></td><td data-th='Subtotal' class='text-center'>" + reader[4].ToString() + "</td><td class='actions' data-th=''><a href='Cart.aspx?remove=" + i + "' class='btn btn-danger btn-sm'><i class='fa fa-trash-o'></i></a></td></tr>";
            }
            reader.Close();
        }
        totals.InnerHtml = total.ToString();
        
        //a.RemoveAt(1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        comm = new SqlCommand("insert into booking values(@a,@b,@c,@d,@e,@f)", con);
        comm.Parameters.AddWithValue("@a", Session["id"].ToString());
        comm.Parameters.AddWithValue("@b", Session["usernm"].ToString());
        comm.Parameters.AddWithValue("@c", Session["userno"].ToString());
        comm.Parameters.AddWithValue("@d", Session["useradd"].ToString());
        comm.Parameters.AddWithValue("@e", a.Count.ToString());
        comm.Parameters.AddWithValue("@f", total.ToString());
        comm.ExecuteNonQuery();
        

        comm = new SqlCommand("select TOP 1 * from booking order by id desc", con);
        SqlDataReader reader1 = comm.ExecuteReader();

        string orderid="",name="",image="",price="",desc="";
        while (reader1.Read())
        {
            orderid = reader1[0].ToString();
            
        }
        reader1.Close();
        for (int i = 0; i < a.Count; i++)
        {
            comm = new SqlCommand("select * from product where id=@a", con);
            comm.Parameters.AddWithValue("@a", a[i].ToString());
            SqlDataReader reader = comm.ExecuteReader();
            
            while (reader.Read())
            {
                name = reader[2].ToString();
                image = reader[3].ToString();
                price = reader[4].ToString();
                desc = reader[5].ToString();            
            }

            reader.Close();

            comm1 = new SqlCommand("insert into ordertable values(@a,@b,@c,@d,@e,@f)", con);
            comm1.Parameters.AddWithValue("@a", orderid);
            comm1.Parameters.AddWithValue("@b", a[i].ToString());
            comm1.Parameters.AddWithValue("@c", name);
            comm1.Parameters.AddWithValue("@d", image);
            comm1.Parameters.AddWithValue("@e", price);
            comm1.Parameters.AddWithValue("@f", desc);
            comm1.ExecuteNonQuery();
        }
        
        a.Clear();

        Response.Write("<script>alert('Order Successfully')</script>");
    }
}