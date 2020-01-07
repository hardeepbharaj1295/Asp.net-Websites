using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int count = TextBox1.Text.Length;
        TextBox1.Text = TextBox1.Text.Remove(count - 1);
        try
        {
            string value = TextBox1.Text;
            DataTable table = new DataTable();
            Label1.Text = table.Compute(value, null).ToString();
        }
        catch(Exception ex)
        {
            Label1.Text = "error";
        }
    }
}