using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_Addsubjectcourcewise : System.Web.UI.Page
{
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

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "AddbookswithCource";
            // cmd.Parameters.AddWithValue("@StudentType",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@SubjectName", TextBox5.Text);
            cmd.Parameters.AddWithValue("@CourseName", DropDownList1.SelectedItem.Text);

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
                lblmsg.Text = "Alredy Book Added";
            }



            else if (Convert.ToInt32(cmd.Parameters["@Inserted"].Value) == 1)
            {
                lblmsg.Text = "Successfully Book Added ";
            }
           
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Book is not Added";

        }


        finally
        {
            con.Close();
        }
    }
    public void addsubject()
    {
        DropDownList1.Items.Clear();
        SqlDataReader sdr;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select CourseName from AddCourse";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@CourseName", DropDownList1.Text);
        sdr = cmd.ExecuteReader();
        DropDownList1.Items.Insert(0, "Select");
        while (sdr.Read())
        {

            DropDownList1.Items.Add(sdr[0].ToString());

        }
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        addsubject();
    }
}
