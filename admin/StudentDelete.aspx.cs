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

public partial class admin_StudentDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/StudentDelete.aspx");

        }
    }

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from StdRegistration where StudentId='" + TextBox1.Text + "'";
        cmd.Connection = con;

        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            Label11.Text = "Deleted Successfully";
        }
        else
        {

            Label11.Text = "Deleted Not Successfully";
        }

    }
}