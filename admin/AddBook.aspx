using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using DAL;
using BAL;
using Entities;
using System.Globalization;
using System.Configuration;
public partial class admin_FacultyReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/AddBook.aspx");

        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); 

    protected void Button1_Click(object sender, EventArgs e)
    {
        CultureInfo ci=new CultureInfo("en-IN");
        DateTime date1 = DateTime.Now;
        TextBox10.Text = date1.ToString("dd/MM/yyyy");
             
        con.Open();
        
        
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_Addbook";

        cmd.Parameters.AddWithValue("@BookID", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Edition", TextBox4.Text);

        cmd.Parameters.AddWithValue("@Author", TextBox5.Text);
    
        cmd.Parameters.AddWithValue("@NoofPages", TextBox6.Text);
    
        cmd.Parameters.AddWithValue("@Year", TextBox7.Text);
    
        cmd.Parameters.AddWithValue("@Source", TextBox8.Text);
    
        cmd.Parameters.AddWithValue("@Cost",Convert.ToDecimal(TextBox9.Text));

        cmd.Parameters.AddWithValue("@InsertDate", date1);

       
        cmd.Connection = con;
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
          // lblmsg.Text = "book added";
           ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Book Successfully added')</script>");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Failed')</script>");

           //lblmsg.Text = "book not added";
        }
        }
    
    }
        

    

