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

public partial class admin_FacultyGetDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/FacultyGetDetails.aspx");

        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader sdr;
    protected void Button1_Click(object sender, EventArgs e)
    {
          con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Faculty_Reg where Faculty_Id='" + TextBox1.Text + "'";
        cmd.Connection = con;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            
            Facidtxt.Text = sdr[1].ToString();
            txtpwd.Text = sdr[2].ToString();

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
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        Facidtxt.Text="";
        txtpwd.Text="";
        facnametxt.Text="";
        facfnametxt.Text="";
        facdobtxt.Text="";
        RadioButtonList1.ClearSelection();
        faccontactnotxt.Text="";
        facaddtxt.Text="";
        facemailtxt .Text="";

    }
}
