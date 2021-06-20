using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class student_StudentRegistrtion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Sname"] == null || string.IsNullOrEmpty(Session["Sname"].ToString()))
        {

            Response.Redirect("~/student.aspx/?r=student/StudentRegistration.aspx");

        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); DataSet ds = new DataSet();

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_StdReg";

        cmd.Parameters.AddWithValue("@StudentId", stdidtxt.Text);
        cmd.Parameters.AddWithValue("@Password", stdnametxt.Text);
        cmd.Parameters.AddWithValue("@StudentName", stdnametxt.Text);
        cmd.Parameters.AddWithValue("@Branch", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@year", DropDownList2.SelectedItem.Text);

        cmd.Parameters.AddWithValue("@FatherName", txtFather.Text);
        cmd.Parameters.AddWithValue("@Dob", txtdob.Text);
        cmd.Parameters.AddWithValue("@Gender",RadioButtonList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@MobileNO", txtcontact.Text);
        cmd.Parameters.AddWithValue("@Adderss", txtadress.Text);

        cmd.Parameters.AddWithValue("@EmailId", txtemail.Text);
        cmd.Connection = con;
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            lblmsg.Text = "insert success";
        }
        else
        {

            lblmsg.Text = "not inserted";
        }

    }

    }
