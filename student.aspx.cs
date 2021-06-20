using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Database=lms1;integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from StdRegistration where StudentID=@StudentID and Password=@MobileNO", con);
        cmd.Parameters.AddWithValue("@StudentID", TextBox1.Text);
        cmd.Parameters.AddWithValue("@MobileNO", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Session["Sname"] = TextBox1.Text;

            if (Request.QueryString["r"] == null || string.IsNullOrEmpty(Request.QueryString["r"].ToString()))
            {
                Response.Redirect("student/StudentHome.aspx");
            }

            else
            {
                string r = Request.QueryString["r"].ToString();
                Response.Redirect("~/" + Request.QueryString["r"].ToString());


            }
          
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Studentforgotpwd.aspx");
    }
}