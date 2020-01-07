using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Loan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Print.aspx?name=" + TextBox1.Text + "&loan=" + DropDownList1.Text + "&sex=" + DropDownList2.Text + "&amt=" + TextBox2.Text + "&inc=" + TextBox3.Text + "&emp=" + DropDownList3.Text + "&bnkname=" + DropDownList4.Text);
    }
}