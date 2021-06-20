using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class faculty_Facultyhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Fname"] == null || string.IsNullOrEmpty(Session["Fname"].ToString()))
        {

            Response.Redirect("~/faculty.aspx/?r=faculty/Facultyhome.aspx");

        }
    }
}