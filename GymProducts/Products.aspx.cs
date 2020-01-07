using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Products : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();

        string value = Request["id"].ToString();
        cat.InnerHtml = value;
        comm = new SqlCommand("select * from product where category=@a", con);
        comm.Parameters.AddWithValue("@a",value);

        SqlDataReader reader = comm.ExecuteReader();
        while (reader.Read())
        {
            prd.InnerHtml += "<li class='portfolio-item2' data-id='id-0' data-type='cat-item-4'><div class='col-md-4'><span class='image-block block2 img-hover'><a class='image-zoom' href='Admin/" + reader[3].ToString() + "' rel='prettyPhoto[gallery]'><img src='Admin/" + reader[3].ToString() + "' class='img-responsive' alt='" + reader[2].ToString() + "'><div class='port-info'><h5>Price " + reader[4].ToString() + "</h5><p>" + reader[5].ToString() + "</p><p><a href='Cart.aspx?id=" + reader[0].ToString() + "'>Buy Now</a></p></div></a></span></div></li>";
        }
        reader.Close();

    }
}