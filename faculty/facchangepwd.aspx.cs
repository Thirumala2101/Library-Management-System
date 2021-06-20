using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class faculty_facchangepwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); 
    DataSet ds = new DataSet();

    protected void Button1_Click(object sender, EventArgs e)
    {

        string s;
        s = string.Format("update Faculty_Reg set contact_no = '{0}' where faculty_id = '{1}' and Password = '{2}'", newpasswordtxt.Text, usernametxt.Text, oldpasswordtxt.Text);
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
            Label6.Text = "Username or Password not Correct";

        con.Close();
    }
}