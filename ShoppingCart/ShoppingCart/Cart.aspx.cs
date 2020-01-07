using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ShoppingCart
{
    public partial class Cart : System.Web.UI.Page
    {
        private const string V = "id";
        SqlConnection sql;
        SqlCommand comm;

        protected void Page_Load(object sender, EventArgs e)
        {
            sql = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("App_Data\\ShoppingCart.mdf") + ";Integrated Security=True");
            sql.Open();


            //if (Request.QueryString[V] != null)
            //{

            //    comm = new SqlCommand("delete from Cart where Id=@a", sql);
            //    comm.Parameters.AddWithValue("@a", Request["id"].ToString());
            //    int k1 = comm.ExecuteNonQuery();
            //    if (k1 > 0)
            //    {
            //        message.InnerHtml = "<div class='alert alert-success alert - dismissible'><a href = '#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Success!</strong> Product Removed To Cart Successfully.</div>";
            //    }
            //    else
            //    {
            //        message.InnerHtml = "<div class='alert alert-danger alert - dismissible'><a href = '#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Alert!</strong> Please Try Again.</div>";
            //    }

            //}

            //comm = new SqlCommand("select Cart.Id,Products.* from Cart left join Products on Cart.pid = Products.Id", sql);
            //SqlDataReader reader = comm.ExecuteReader();

            //while (reader.Read())
            //{
            //    img.InnerHtml += "<tr><td><img width='100' height='100' src='" + reader[4].ToString() + "' ></img></td><td>" + reader[3].ToString() + "</td><td>" + reader[6].ToString() + "</td><td>" + reader[5].ToString() + "</td><td><a href='Cart?id=" + reader[0].ToString() + "'>Remove</a></td>";
            //}
            //reader.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            comm = new SqlCommand("delete from Cart where Id=@a", sql);
            comm.Parameters.AddWithValue("@a", GridView1.SelectedRow.Cells[0].Text);
            int k1 = comm.ExecuteNonQuery();
            if (k1 > 0)
            {
                message.InnerHtml = "<div class='alert alert-success alert - dismissible'><a href = '#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Success!</strong> Product Removed To Cart Successfully.</div>";
                Response.Redirect("Cart.aspx");
            }
            else
            {
                message.InnerHtml = "<div class='alert alert-danger alert - dismissible'><a href = '#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Alert!</strong> Please Try Again.</div>";
            }
        }
    }
}