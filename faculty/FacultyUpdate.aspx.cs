using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class faculty_FacultyUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Fname"] == null || string.IsNullOrEmpty(Session["Fname"].ToString()))
        {

            Response.Redirect("~/faculty.aspx/?r=faculty/FacultyUpdate.aspx");

        }

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); DataSet ds = new DataSet();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader sdr;
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Faculty_Reg where Faculty_ID='" + TextBox1.Text + "'";
        cmd.Connection = con;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {

            Facidtxt.Text = sdr[1].ToString();
            Password.Text = sdr[2].ToString();
            facnametxt.Text = sdr[3].ToString();
            facfnametxt.Text = sdr[4].ToString();
            facdobtxt.Text = sdr[5].ToString();
            RadioButtonList1.Text = sdr[6].ToString();
            faccontactnotxt.Text = sdr[7].ToString();
            facaddtxt.Text = sdr[8].ToString();
            facemailtxt.Text = sdr[9].ToString();
            sdr.Close();
            con.Close();
        }
        else
        {
            Label2.Text = "invalid facid";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_Facupdate";
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@faculty_id", Facidtxt.Text);
        cmd.Parameters.AddWithValue("@Password", Password.Text);
        cmd.Parameters.AddWithValue("@faculty_name", facnametxt.Text);
        cmd.Parameters.AddWithValue("@father_name", facfnametxt.Text);
        cmd.Parameters.AddWithValue("@DOB", facdobtxt.Text);
        cmd.Parameters.AddWithValue("@gender", RadioButtonList1.Text);
        cmd.Parameters.AddWithValue("@MobileNO", faccontactnotxt.Text);
        cmd.Parameters.AddWithValue("@address", facaddtxt.Text);
        cmd.Parameters.AddWithValue("@EmailID", facemailtxt.Text);
        //cmd.Parameters.AddWithValue("@Adderss", txtaddress.Text);
        //cmd.Parameters.AddWithValue("@EmailId", txtemail.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label10.Text = "update success";
        }
        else
        {
            Label10.Text = "update not success";
        }
    }
}