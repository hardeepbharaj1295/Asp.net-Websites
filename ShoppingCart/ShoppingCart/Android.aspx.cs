using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ShoppingCart
{
    public partial class Android : System.Web.UI.Page
    {
        private const string V = "id";
        SqlConnection sql;
        SqlCommand comm;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename="+Server.MapPath("App_Data\\ShoppingCart.mdf")+";Integrated Security=True");
            sql.Open();

            //comm = new SqlCommand("select * from products where type='Android'", sql);
            //SqlDataReader reader = comm.ExecuteReader();

            //while (reader.Read())
            //{
            //    img.InnerHtml += "<tr><td>" + reader[2].ToString() + "</td><td><img width='100' height='100' src='" + reader[3].ToString() + "' ></img></td><td>" + reader[4].ToString() + "</td><td>" + reader[5].ToString() + "</td><td>" + reader[6].ToString() + "</td><td>" + reader[7].ToString() + "</td><td><a href='Android?id=" + reader[0].ToString() + "'>Add To Cart</a></td>";
            //}
            //reader.Close();

            //if (Request.QueryString[V] != null)
            //{       
            //    comm = new SqlCommand("insert into Cart(pid) values(@a)", sql);
            //    comm.Parameters.AddWithValue("@a", Request["id"].ToString());
            //    int k1 = comm.ExecuteNonQuery();
            //    if (k1 > 0)
            //    {
            //        message.InnerHtml = "<div class='alert alert-success alert - dismissible'><a href = '#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Success!</strong> Product Added To Cart Successfully.</div>";                  
            //    }
            //    else
            //    {
            //        message.InnerHtml = "<div class='alert alert-danger alert - dismissible'><a href = '#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Alert!</strong> Please Try Again.</div>";
            //    }

            //}
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            comm = new SqlCommand("insert into Cart(pid) values(@a)", sql);
            comm.Parameters.AddWithValue("@a", GridView1.SelectedRow.Cells[0].Text);
            int k1 = comm.ExecuteNonQuery();
            if (k1 > 0)
            {
                message.InnerHtml = "<div class='alert alert-success alert - dismissible'><a href = '#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Success!</strong> Product Added To Cart Successfully.</div>";
            }
            else
            {
                message.InnerHtml = "<div class='alert alert-danger alert - dismissible'><a href = '#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Alert!</strong> Please Try Again.</div>";
            }
        }
    }
}