using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Category : System.Web.UI.Page
{
    SqlCommand comm;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("App_Data\\Database.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();

        //string value = Request["parameter1"].ToString();
        //comm = new SqlCommand("select * from category where type=''", con);
        comm = new SqlCommand("select * from category", con);
       
        SqlDataReader reader = comm.ExecuteReader();
        while (reader.Read())
        {
            tab.InnerHtml += "<div class='col-md-4'><div class='thumbnail'><a href='Admin/" + reader[2].ToString() + "'><img src='Admin/" + reader[2].ToString() + "' alt='Lights' style='width:100%'><div class='caption'><p><a class='btn' href='Products.aspx?id=" + reader[1].ToString() + "'>" + reader[1].ToString() + "</a></p></div></a></div></div>";
           // tab.InnerHtml += "<tr><td colspan='5'><hr size='5' style='border-top: 4px solid;border-color:#aa6c09;'/></td></tr><tr><td><img width='100' height='100' src='Admin/" + reader[2].ToString() + "' ></img></td><td><a href='Products.aspx?id=" + reader[1].ToString() +"'>" + reader[1].ToString() + "</a></td></tr>";
        }
        reader.Close();
    }
}