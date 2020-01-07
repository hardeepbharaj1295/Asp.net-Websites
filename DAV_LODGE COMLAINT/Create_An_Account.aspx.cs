using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string str1, str2, str3, str4, str5, str6, str7,str8,str9,connect,query;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
      
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=e:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
        string Name, userid, password, gender, DOB, address, pin, mobile, email_id, SQUN, ANS;
        str1 = TextBox1.Text;
        str2 = TextBox2.Text;
        str3 = String.Concat(str1, " ");
        TextBox18.Text = String.Concat(str3, str2);
        str4 = DropDownList2.Text;
        str5 = DropDownList3.Text;

        str6 = TextBox12.Text;
        str7 = String.Concat(str4, "/");
        TextBox19.Text = String.Concat(str4, str5, str6);
        str8 = TextBox3.Text;
        str9 = DropDownList1.Text;
        TextBox16.Text = string.Concat(str8, str9);


        Name = TextBox18.Text;

        userid = TextBox16.Text;
        password = TextBox4.Text;

        gender = RadioButton1.Text;
        if (RadioButton1.Checked == true)
            gender = "female";
        if (RadioButton2.Checked == true)
            gender = "Male";


        DOB = TextBox19.Text;
        address = TextBox17.Text;
        pin = TextBox7.Text;
        mobile = TextBox15.Text;
        email_id = TextBox9.Text;
        SQUN = DropDownList4.Text;
        ANS = TextBox11.Text;
        query = "Insert into ulogin values('" + Name + "','" + userid + "','" + password + "','" + gender + "','" + DOB + "','" + address + "','" + pin + "','" + mobile + "','" + email_id + "','" + SQUN + "','" + ANS + "')";
        SqlConnection con = new SqlConnection(connect);
        SqlCommand cmd = new SqlCommand(query);
        con.Open();
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        Label14.Visible = true;
        Label14.Text = "Account Is Created";
        this.Dispose();
        Response.Redirect("User_Login.aspx");
    }
}
    