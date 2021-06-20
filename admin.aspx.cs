using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from AdminLogin where UserName=@UserName and Password=@Password", con);
        cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["Aname"] = TextBox1.Text;

            if (Request.QueryString["r"] == null || string.IsNullOrEmpty(Request.QueryString["r"].ToString()))
            {
                Response.Redirect("admin/AdminHome.aspx");
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
    protected void Button3_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotpassword.aspx");
    }
}