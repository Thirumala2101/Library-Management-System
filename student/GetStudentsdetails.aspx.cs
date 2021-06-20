using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class student_GetStudentsdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Sname"] == null || string.IsNullOrEmpty(Session["Sname"].ToString()))
        {

            Response.Redirect("~/student.aspx/?r=student/GetStudentsdetails.aspx");

        }
        txtstid.Text = Session["Sname"].ToString();
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); 

    SqlCommand cmd = new SqlCommand();
    SqlDataReader sdr;
    protected void Button3_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        stdidtxt.Text = String.Empty;
        stdnametxt.Text = string.Empty;
        DropDownList1.SelectedItem.Text = string.Empty;
        DropDownList2.SelectedItem.Text = string.Empty;
        txtfather.Text = string.Empty;
        txtdob.Text = string.Empty;
        txtcontact.Text = string.Empty;
        txtaddress.Text = string.Empty;
        txtemail.Text = string.Empty;


    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from StdRegistration where StudentId='" + txtstid.Text + "'";
        cmd.Connection = con;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            sdr.Close();
            sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                stdidtxt.Text = sdr[1].ToString();
                txtpwd.Text = sdr[2].ToString();
                stdnametxt.Text = sdr[3].ToString();
                DropDownList1.SelectedItem.Text = sdr[4].ToString();
                DropDownList2.SelectedItem.Text = sdr[5].ToString();
                txtfather.Text = sdr[6].ToString();
                txtdob.Text = sdr[7].ToString();
                RadioButtonList1.Text = sdr[8].ToString();
                txtcontact.Text = sdr[9].ToString();
                txtaddress.Text = sdr[10].ToString();
                txtemail.Text = sdr[11].ToString();


            }
        }
    }
}