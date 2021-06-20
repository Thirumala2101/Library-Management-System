using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_ViewBookBankStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        getdetails();
    }
    SqlConnection con;
    SqlDataAdapter sda;
    DataSet ds = new DataSet();
    public void getdetails()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
        try
        {
           
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_viewbookbankstd";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
         
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        catch(Exception ex)
        {

        }
    }
}