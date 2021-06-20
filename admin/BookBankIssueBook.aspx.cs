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

public partial class admin_BookBankIssueBook : System.Web.UI.Page
{
    CultureInfo ci = new CultureInfo("en-US");
    
    DateTime date1 = DateTime.Now;
    DateTime date2 = DateTime.Today.AddDays(200);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/BookBankIssueBook.aspx");

        }
        TextBox3.Text = date1.ToString("dd/MM/yyyy");

        TextBox4.Text = date2.ToString("dd/MM/yyyy");
       
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); 

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
          
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "BookBankIssueBook";
            // cmd.Parameters.AddWithValue("@StudentType",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@StudentID", TextBox1.Text);
           // cmd.Parameters.AddWithValue("@SubjectName", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@BookID", DropDownList3.SelectedItem.Text);

            cmd.Parameters.AddWithValue("@IssueDate", date1);
            cmd.Parameters.AddWithValue("@ActualReturnDate", date2);

           


            cmd.Connection = con;

            int res = cmd.ExecuteNonQuery();

            if (res > 0)
            {
                lblmsg.Text = "Book is issued";
            }
            //else
            //{
            //if (Convert.ToInt32(cmd.Parameters["@Inserted"].Value) == 0)
            //{
            //    lblmsg.Text = "Book is not available in Library";
            //}



            //else if (Convert.ToInt32(cmd.Parameters["@totalbk"].Value) == 0)
            //{
            //    lblmsg.Text = "Alredy 10 books issued ";
            //}


            //else if (Convert.ToInt32(cmd.Parameters["@Inserted"].Value) == 1)
            //{
            //    lblmsg.Text = "Book is issued";
            //}
            //}

            // }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Book is not issued";

        }


        finally
        {
            con.Close();
        }
    }
//    protected 
    public    void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    public void addsubject()
    {
        DropDownList3.Items.Clear();
        SqlDataReader sdr;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Issuebookstd3";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@SubjectName", DropDownList2.Text);
        sdr = cmd.ExecuteReader();
        DropDownList3.Items.Insert(0, "Select");
        while (sdr.Read())
        {

            DropDownList3.Items.Add(sdr[0].ToString());

        }
    }
   
    public void selectitems()
    {
        DropDownList2.Items.Clear();
        SqlDataReader sdr;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select Name from AddBook where Status=1 ";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@StudentId", TextBox1.Text);
        sdr = cmd.ExecuteReader();
        DropDownList2.Items.Insert(0, "Select");
        while (sdr.Read())
        {

            DropDownList2.Items.Add(sdr[0].ToString());

        }
    }
   
    
   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
        selectitems();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        addsubject();
    }
}