using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class admin_IssueRefferenceBook : System.Web.UI.Page
{
    CultureInfo ci = new CultureInfo("en-US");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/IssueStudentBook.aspx");

        }

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            TextBox3.Text = Convert.ToDateTime(DateTime.Now.ToShortDateString(), ci).ToString("dd/MM/yyyy");
            //TextBox4.Text = (DateTime.Now.ToString()).ToString("dd/MM/yyyy");
         
            //DateTime date1 = Convert.ToDateTime("TextBox4.Text", ci).ToString();
            //date1 = Convert.ToDateTime(date1).AddHours(4);
            DateTime date =DateTime.Today;
            DateTime arrivalDate = date.AddHours(16);
           // TextBox4.ForeColor = System.Drawing.Color.DeepPink;
           // TextBox4.Text = "Today :" + date.ToLongDateString();
            TextBox4.Text = arrivalDate.ToString("dd/MM/yyyy hh:mm:sstt");
             
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Referencebook";
            // cmd.Parameters.AddWithValue("@StudentType",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@StudentID", TextBox1.Text);
          
            cmd.Parameters.AddWithValue("@BookID", TextBox5.Text);


            cmd.Parameters.AddWithValue("@IssueDate", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ReturnDate", TextBox4.Text);

            cmd.Parameters.Add("@Inserted", SqlDbType.Int);
            cmd.Parameters["@Inserted"].Direction = ParameterDirection.Output;
            //cmd.Parameters.Add("@totalbk", SqlDbType.Int);
            //cmd.Parameters["@totalbk"].Direction = ParameterDirection.Output;


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
                Label8.Text = "Book is not available in Library";
            }



            //else if (Convert.ToInt32(cmd.Parameters["@totalbk"].Value) == 0)
            //{
            //    Label8.Text = "Alredy 3 books issued ";
            //}


            else if (Convert.ToInt32(cmd.Parameters["@Inserted"].Value) == 1)
            {
                Label8.Text = "Book is issued";
            }
            //}

            // }
        }
        catch (Exception ex)
        {
            Label8.Text = "Book is not issued";

        }


        finally
        {
            con.Close();
        }
    }

   
   
}