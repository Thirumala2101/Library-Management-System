using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
public partial class admin_ReportFaculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/GetBookdetails.aspx");

        }

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
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
                txtbookid.Text = sdr[1].ToString();
                txtbookname.Text = sdr[2].ToString();
                txtedition.Text = sdr[3].ToString();

                txtauthor.Text = sdr[4].ToString();
                txtnoofpages.Text = Convert.ToInt32(sdr[5]).ToString();
                txtyear.Text = sdr[6].ToString();
                txtsource.Text = sdr[7].ToString();
                txtcost.Text = Convert.ToDecimal(sdr[8]).ToString();
                txtInserteddate.Text = Convert.ToDateTime(sdr[9]).ToString();


            }
        }
    }
}