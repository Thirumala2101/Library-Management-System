using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Globalization;
using System.Configuration;

public partial class admin_FacultyDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/BookDelete.aspx");

        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);

    protected void Button5_Click(object sender, EventArgs e)
    {

       
       
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from AddBook where BookId='" + TextBox5.Text + "'";
        cmd.Connection = con;

        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Book deleted')</script>");

          //  lblmsg.Text = "Deleted Successfully";
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Book Invalid BookID')</script>");

          //  lblmsg.Text = "Deleted Not Successfully";
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
}

