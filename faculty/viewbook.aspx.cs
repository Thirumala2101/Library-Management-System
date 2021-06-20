using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class faculty_viewbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); DataSet ss = new DataSet();



        con.Open();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select ID,Faculty_ID,BookID,IssueDate,ReturnDate from FacultyIssueBook where Faculty_ID=@Faculty_ID and Status=1 ";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@Faculty_ID", Session["Fname"].ToString());
        DataSet ds = new DataSet();

        SqlDataAdapter sda = new SqlDataAdapter(cmd);

        sda.Fill(ds);

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();





    }
}