using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Code_LMS_Project_student_student : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["Sname"] == null || string.IsNullOrEmpty(Session["Sname"].ToString()))
        {

            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
        }
        Response.Redirect("~/student.aspx");
    }
}
