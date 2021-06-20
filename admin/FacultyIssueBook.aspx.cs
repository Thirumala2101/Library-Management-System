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
public partial class admin_FacultyIssueBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/FacultyIssueBook.aspx");

        }

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    protected void Button1_Click1(object sender, EventArgs e)
    {
        CultureInfo ci = new CultureInfo("en-IN");
        TextBox3.Text = Convert.ToDateTime(DateTime.Now.ToShortDateString(), ci).ToString("dd/MM/yyyy");
        TextBox4.Text = Convert.ToDateTime(DateTime.Today.AddDays(365).ToShortDateString(), ci).ToString("dd/MM/yyyy");
       
        try
        {
           
            
        con.Open();
        //DateTime date1 = Convert.ToDateTime(TextBox3.Text, en);
        //DateTime date2 = Convert.ToDateTime(TextBox4.Text, en);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_facissuebook";

        cmd.Parameters.AddWithValue("@faculty_id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@BookId", TextBox2.Text);
        cmd.Parameters.AddWithValue("@IssueDate", TextBox3.Text);
        cmd.Parameters.AddWithValue("@ReturnDate", TextBox4.Text);

        cmd.Parameters.Add("@Inserted", SqlDbType.Int);
        cmd.Parameters["@Inserted"].Direction = ParameterDirection.Output;

        cmd.Connection = con;
        int res = cmd.ExecuteNonQuery();
  
         //if (res > 0)
                //{
                //    Label5.Text = "Book is issued";
                //}
                //else
                //{
                if (Convert.ToInt32(cmd.Parameters["@Inserted"].Value) == 0)
                {
                    Label5.Text = "Book is not available in Library";
                }
                else if (Convert.ToInt32(cmd.Parameters["@Inserted"].Value) == 1)
                    Label5.Text = "Book is issued";

                //}
               
        }
         catch (Exception ex)
            
        {

        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();

        }
   
    }
    //protected void TextBox3_TextChanged(object sender, EventArgs e)
    //{
    //    string todaydate = DateTime.Now.ToString();

    //    if (todaydate != TextBox3.Text)//todayDate is your textbox
    //    {
    //        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Date entered is incorrect!');", true);
    //    }
    //}
}