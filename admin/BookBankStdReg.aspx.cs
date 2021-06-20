using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using DAL;
using BAL;
using System.Globalization;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_BookBankStdReg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/StudentRegistration.aspx");

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_BookBankStdReg";
            
            cmd.Parameters.AddWithValue("@StudentID", txtStudentID.Text);
            cmd.Parameters.AddWithValue("@StudentName", txtStudentName.Text);
            cmd.Parameters.AddWithValue("@Branch", txtBranch.Text);
            cmd.Parameters.AddWithValue("@Year", txtYear.Text);
            cmd.Parameters.AddWithValue("@Fee", txtFee.Text);
            

           
            cmd.Parameters.Add("@Inserted", SqlDbType.Int);
            cmd.Parameters["@Inserted"].Direction = ParameterDirection.Output;
            cmd.Connection = con;
            int res = cmd.ExecuteNonQuery();

            if (Convert.ToInt32(cmd.Parameters["@Inserted"].Value)== 0)
            {
                Label8.Text = "Not available student details in student Registration";



            }
            else if (Convert.ToInt32(cmd.Parameters["@Inserted"].Value) == 1)
            {
                lblmsg.Text = "Registration Success";
            }

        }
        catch (Exception ex)
        {
            lblmsg.Text = " Registration Fail";

        }


        finally
        {
            con.Close();
        }
    }



    protected void txtStudentID_TextChanged(object sender, EventArgs e)
    {
        selectitems();
    }
    public void selectitems()
    {
        con.Open();

        SqlDataReader sdr;
        SqlCommand cmd = new SqlCommand();

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_getbookbankstudentdetails";
        cmd.Parameters.AddWithValue("@StudentID", txtStudentID.Text);

        cmd.Connection = con;
        sdr = cmd.ExecuteReader();

        while (sdr.Read())
        {

            txtStudentName.Text = sdr[0].ToString();
            txtBranch.Text = sdr[1].ToString();
            txtYear.Text = sdr[2].ToString();
         //   txtFee.Text = sdr[3].ToString();

        }


    }

   }