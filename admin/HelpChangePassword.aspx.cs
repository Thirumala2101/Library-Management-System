using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class admin_HelpChangePassword : System.Web.UI.Page
{
   // string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    string str = null;
    SqlCommand com;
    byte up;
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/HelpChangePassword.aspx");

        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    protected void Button1_Click(object sender, EventArgs e)
    {

        string s;
        s = string.Format("update AdminLogin set Password = '{0}' where Username = '{1}' and Password = '{2}'", newpasswordtxt.Text, usernametxt.Text, oldpasswordtxt.Text);
        SqlCommand cmd = new SqlCommand(s, con);
        con.Open();
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            
            usernametxt.Text = "";
            oldpasswordtxt.Text = "";
            newpasswordtxt.Text = "";
            confirmpasswordtxt.Text = "";
            Label6.Text = "Password Updated successfully";
        }
        else
            Label6.Text = "Username or Password not Currect";

        con.Close();
    }
}