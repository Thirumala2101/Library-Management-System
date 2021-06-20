using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class faculty_SearchBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Fname"] == null || string.IsNullOrEmpty(Session["Fname"].ToString()))
        {

            Response.Redirect("~/faculty.aspx/?r=faculty/SearchBook.aspx");

        }

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); 
    DataSet ds = new DataSet();

    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_search";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);

        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(ds);

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();





    }
}