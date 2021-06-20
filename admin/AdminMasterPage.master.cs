using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if (Session["Aname"] != null || !string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
        }
        
        Response.Redirect("~/admin.aspx");

    }
    }

