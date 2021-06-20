using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class faculty_FacultyGetDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Fname"] == null || string.IsNullOrEmpty(Session["Fname"].ToString()))
        {

            Response.Redirect("~/faculty.aspx/?r=faculty/FacultyGetDetails.aspx");

        }

        bind();
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); 
    DataSet ds = new DataSet();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader sdr;
    void bind()
    {


        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Faculty_Reg where faculty_id='" + Session["Fname"].ToString()+ "'";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
  
}
