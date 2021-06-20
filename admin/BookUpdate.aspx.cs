using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using Entities;
using DAL;
using BAL;
using System.Globalization;
using System.Configuration;
public partial class admin_FacultyUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ////if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        ////{

        ////    Response.Redirect("~/admin.aspx/?r=admin/BookUpdate.aspx");

        ////}
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader sdr;
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_bookUpdate", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@BookID", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Edition", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Author", TextBox5.Text);
        cmd.Parameters.AddWithValue("@NoofPages", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Year", TextBox7.Text);
        cmd.Parameters.AddWithValue("@Source", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Cost", TextBox9.Text);
        cmd.Parameters.AddWithValue("@InsertDate", TextBox10.Text);



        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
         //   lblmsg.Text = "update success";
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Book Updated')</script>");


        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Book not added')</script>");

          //  lblmsg.Text = "update not success";
        }
        con.Close();

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        


        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from AddBook where BookId='" + TextBox11.Text + "'";
        cmd.Connection = con;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            sdr.Close();
            sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                CultureInfo ci = new CultureInfo("en-IN");
                TextBox2.Text = sdr[1].ToString();
                TextBox3.Text = sdr[2].ToString();
                TextBox4.Text = sdr[3].ToString();

                TextBox5.Text = sdr[4].ToString();
                TextBox6.Text = Convert.ToInt32(sdr[5]).ToString();
                TextBox7.Text = sdr[6].ToString();
                TextBox8.Text = sdr[7].ToString();
                TextBox9.Text = Convert.ToDecimal(sdr[8]).ToString();
                TextBox10.Text = Convert.ToDateTime(sdr[9]).ToString();

            }
        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Book-ID')</script>");
        }

    }    
 
    }

      


    
