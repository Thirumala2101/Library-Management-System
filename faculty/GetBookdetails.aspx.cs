using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class faculty_GetBookdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Fname"] == null || string.IsNullOrEmpty(Session["Fname"].ToString()))
        {

            Response.Redirect("~/faculty.aspx/?r=faculty/GetBookdetails.aspx");

        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    DataSet ds = new DataSet();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader sdr;
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from AddBook where BookId='" + textBooid.Text + "'";
        cmd.Connection = con;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            sdr.Close();
            sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                TextBox2.Text = sdr[1].ToString();
                TextBox3.Text = sdr[2].ToString();

                TextBox4.Text = sdr[3].ToString();
                TextBox5.Text = sdr[4].ToString();

            }
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}


