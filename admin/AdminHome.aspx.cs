using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        //{

        //    Response.Redirect("~/admin.aspx/?r=admin/AdminHome.aspx");

        //}
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }
    
   

    private void SetImageUrl()
    {
        Random r = new Random();
        int i = r.Next(1, 8);
        Image1.ImageUrl = "~/images/" + i.ToString() + ".jpg";
    }
    
}