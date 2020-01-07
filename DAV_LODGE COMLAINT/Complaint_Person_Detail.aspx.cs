using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    string connect, query;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label14.Text = Session["User_id"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";

        string MobileNo,fname, lname, Name, Address, PinCode, Email, WardNo, Locality, Landmark ;

        MobileNo = TextBox1.Text;

        fname = TextBox2.Text;
        lname = TextBox3.Text;
        Name = String.Concat(fname, " ");
        TextBox8.Text = String.Concat(Name, lname);

        Address = TextBox4.Text;

        PinCode = TextBox5.Text;

        Email = TextBox6.Text;

        WardNo = DropDownList2.Text;

        Locality = DropDownList3.Text;

        Landmark = TextBox7.Text;

        query = "Insert into CPersonDetail values('" + MobileNo + "','" + Name + "','" + Address + "','" + PinCode + "','" + Email + "','" + WardNo + "','" + Locality + "','" + Landmark + "')";
        SqlConnection con = new SqlConnection(connect);
        SqlCommand cmd = new SqlCommand(query);
        con.Open();
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        this.Dispose();
        Response.Redirect("User_Complaint_Types.aspx");
        Session["MobileNo"] = "TextBox1.Text";
        Session["Email"] = "TextBox6.Text";

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        connect = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Swachh_Bharat\\App_Data\\bharat.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connect);
        con.Open();
        if (DropDownList2.SelectedItem.Text == "WardNo1")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo1 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo1");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo2")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo2 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo2");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo3")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo3 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo3");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        
        if (DropDownList2.SelectedItem.Text == "WardNo4")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo4 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo4");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo5")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo5 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo5");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo6")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo6 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo6");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo7")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo7 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo7");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo8")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo8 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo8");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo9")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo9 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo9");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo10")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo10 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo10");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo11")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo11 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo11");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo12")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo12 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo12");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo13")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo13 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo13");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo14")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo14 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo14");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo15")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo15 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo15");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo16")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo16 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo16");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo17")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo17 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo17");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo18")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo18 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo18");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo19")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo19 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo19");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo20")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo20 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo20");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo1")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo1 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo1");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo2")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo2 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo2");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo3")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo3 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo3");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo4")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo4 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo4");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo5")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo5 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo5");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo6")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo6 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo6");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo7")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo7 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo7");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo8")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo8 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo8");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo9")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo9 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo9");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo10")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo10 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo10");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo1")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo1 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo1");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo2")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo2 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo2");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo3")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo3 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo3");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo4")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo4 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo4");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo5")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo5 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo5");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo6")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo6 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo6");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo7")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo7 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo7");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo8")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo8 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo8");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo9")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo9 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo9");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo10")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo10 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo10");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo21")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo21 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo21");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo22")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo22 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo22");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo23")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo23 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo23");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo24")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo24 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo24");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo25")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo25 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo25");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo26")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo26 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo26");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo27")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo27 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo27");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo28")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo28 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo28");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo29")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo29 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo29");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo30")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo30 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo30");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo31")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo31 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo31");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo32")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo32 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo32");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo33")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo33 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo33");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo34")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo34 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo34");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo35")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo35 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo35");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo36")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo36 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo36");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo37")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo37 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo37");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo38")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo38 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo38");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo39")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo39 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo39");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo40")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo40 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo40");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo41")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo1 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo1");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo42")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo42 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo42");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo43")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo43 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo43");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo44")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo44 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo44");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo45")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo45 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo45");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo46")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo46 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo46");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo47")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo47 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo47");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo48")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo48 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo48");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo49")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo49 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo49");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo50")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo50 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo50");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo51")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo51 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo51");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo52")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo52 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo52");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo53")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo53 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo53");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo54")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo54 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo54");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }


        if (DropDownList2.SelectedItem.Text == "WardNo55")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo55 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo55");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo56")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo56 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo56");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo57")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo57 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo57");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo58")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo58 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo58");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo59")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo59 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo59");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        if (DropDownList2.SelectedItem.Text == "WardNo60")
        {
            DropDownList3.Items.Clear();
            SqlDataAdapter da = new SqlDataAdapter("Select WardNo60 from Ward", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "WardNo60");
            int count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)

                DropDownList3.Items.Add(ds.Tables[0].Rows[i][0].ToString());
        }

        



    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}