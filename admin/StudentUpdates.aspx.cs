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
public partial class admin_StudentUpdates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/StudentUpdates.aspx");

        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader sdr;
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from StdRegistration where StudentId='" + TextBox1.Text + "'";
        cmd.Connection = con;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
           
            //sdr = cmd.ExecuteReader();
            //while (sdr.Read())
            //{
                stdidtxt.Text = sdr[1].ToString();
                txtpwd.Text = sdr[2].ToString();
                stdnametxt.Text = sdr[3].ToString();
                DropDownList1.SelectedItem.Text = sdr[4].ToString();
                DropDownList2.SelectedItem.Text = sdr[5].ToString();
                txtfather.Text = sdr[6].ToString();
                txtdob.Text = sdr[7].ToString();
                RadioButtonList1.Text = sdr[8].ToString();
              // RadioButtonList1.SelectedItem.Text = sdr[6].ToString();
                txtcontact.Text = sdr[9].ToString();
                txtaddress.Text = sdr[10].ToString();
                txtemail.Text = sdr[11].ToString();

                sdr.Close();
                con.Close();
            //}
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Student-ID')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
       
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_stdupdate";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@StudentID", stdidtxt.Text);
        cmd.Parameters.AddWithValue("@Password", txtpwd.Text);
        cmd.Parameters.AddWithValue("@StudentName", stdnametxt.Text);
        cmd.Parameters.AddWithValue("@Branch", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@year", DropDownList2.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@FatherName", txtfather.Text);
      //  CultureInfo ci = new CultureInfo("en-IN");
      //DateTime ogjdate= Convert.ToDateTime(txtdob.Text);
        
      cmd.Parameters.AddWithValue("@DOB",Convert.ToDateTime(txtdob.Text));
        cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@MobileNO", txtcontact.Text);
        cmd.Parameters.AddWithValue("@Adderss", txtaddress.Text);
        cmd.Parameters.AddWithValue("@EmailID", txtemail.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
           // Label11.Text = "update success";
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('SuccessFully Updated')</script>");
            clear();
        }
        else
        {
           // Label11.Text = "update not success";
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Update Failed')</script>");
             
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
    }
    public void clear()
    {
        stdidtxt.Text = string.Empty;
    txtpwd.Text=string.Empty;

 stdnametxt.Text="";
DropDownList1.SelectedItem.Text="";
        DropDownList2.SelectedItem.Text="";
        txtfather.Text="";
        txtdob.Text=string.Empty;
        RadioButtonList1.ClearSelection();

        txtcontact.Text="";
        txtaddress.Text="";
        txtemail.Text="";
            
    }
}

