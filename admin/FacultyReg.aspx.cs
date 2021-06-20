using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using Entities;
using DAL;
using BAL;

using System.Globalization;
using System.Data.OleDb;
using System.Configuration;
public partial class admin_FacultyReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        //{

        //    Response.Redirect("~/admin.aspx/?r=admin/FacultyReg.aspx");

        //}
        //FileUpload1.Visible = false;
        //Label13.Visible = false;
        //Button4.Visible = false;
        //Button5.Visible = false;
        //Button6.Visible = false;
        //Button8.Visible = false;
        //Button9.Visible = false;
        //lblmsg.Visible = false;
        //Panel2.Visible = false;
        //Label17.Visible = false;
        
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); DataSet ds;
    DataTable Dt;

   
    protected void Button4_Click(object sender, EventArgs e)
    {
        
        
            SqlConnection cnn;
            string connectionstring = null;
            string sql = null;

            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=FacultyExcelSheet.xls");

            Response.ContentType = "application/vnd.ms-xls";

           
      
            con.Open();
            sql = "SELECT * FROM Faculty_Reg";
            SqlDataAdapter dscmd = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            dscmd.Fill(ds);

            Repeater Repeater1 = new Repeater();
            Repeater1.DataSource = ds;
            Repeater1.HeaderTemplate = new MyTemplate(ListItemType.Header, null);
            Repeater1.ItemTemplate = new MyTemplate(ListItemType.Item, ds);
            Repeater1.FooterTemplate = new MyTemplate(ListItemType.Footer, null);
            Repeater1.DataBind();

            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            Repeater1.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
        }

        public class MyTemplate : ITemplate
        {
            ListItemType type;
            LiteralControl lc;
            DataSet ds;
            static int ctr;
            public MyTemplate(ListItemType type, DataSet ds)
            {
                this.type = type;
                this.ds = ds;
                ctr = 0;
            }
            public void InstantiateIn(Control container)
        {
            switch (type)
            {	
                   
                case ListItemType.Header:
                   lc = new LiteralControl("<table border=1><tr><th>Faculty_ID</th><th>Password</th><th>Faculty_Name</th><th>Father_Name</th><th>DOB</th><th>Gender</th><th>MobileNO</th><th>Adderss</th><th>EmailID</th></tr>");
                    break;
                case ListItemType.Item:
                    lc = new LiteralControl("<tr><td>" + ds.Tables[0].Rows[ctr]["Faculty_ID"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Password"] + "</td> <td>" + ds.Tables[0].Rows[ctr]["Faculty_Name"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Father_Name"] + "</td><td>" + ds.Tables[0].Rows[ctr]["DOB"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Gender"] + "</td><td>" + ds.Tables[0].Rows[ctr]["MobileNO"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Address"] + "</td><td>" + ds.Tables[0].Rows[ctr]["EmailID"] + "</td> </tr>");
                    ctr++;
                    break;
                case ListItemType.Footer:
                    lc = new LiteralControl("</table>");
                    ctr = 0;
                    break;
            }
            container.Controls.Add(lc);
        }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            //ImporttoDatatable();
            //InsertData();
            //Panel1.Visible = true;
            //Label13.Visible = true;
            //FileUpload1.Visible = true;
            //Button8.Visible = true;
            //Button9.Visible = false;
            //Button5.Visible = true;
            //Button6.Visible = true;

           
        }
        private void InsertData()
        {
            for (int i = 0; i < Dt.Rows.Count; i++)
            {
                DataRow row = Dt.Rows[i];
                int columnCount = Dt.Columns.Count;
                string[] columns = new string[columnCount];
                for (int j = 0; j < columnCount; j++)
                {
                    columns[j] = row[j].ToString();
                }
                con.Open();
                
                CultureInfo IND_Ci = new CultureInfo("en-IN");
                DateTime DOB = Convert.ToDateTime(columns[4].ToString(), IND_Ci);

                string sql = "INSERT INTO Faculty_Reg(Faculty_ID,Password,Faculty_Name,Father_Name,DOB,Gender,MobileNo,Address,EmailID)";
                sql += "VALUES('" + columns[0] + "','" + columns[1] + "','" + columns[2] + "','" + columns[3] + "','" + DOB + "','" + columns[5] + "','" + columns[6] + "','" + columns[7] + "','" + columns[8] + "')";
                SqlCommand cmd = new SqlCommand(sql, con);
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@StudentId", stdidtxt.Text);
                //cmd.Parameters.AddWithValue("@StudentName", stdnametxt.Text);
                //cmd.Parameters.AddWithValue("@Branch", DropDownList1.SelectedItem.Text);
                //cmd.Parameters.AddWithValue("@year", DropDownList2.SelectedItem.Text);

                //cmd.Parameters.AddWithValue("@FatherName", txtFather.Text);
                //cmd.Parameters.AddWithValue("@Dob", txtdob.Text);
                //cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
                //cmd.Parameters.AddWithValue("@ContactNo", txtcontact.Text);
                //cmd.Parameters.AddWithValue("@Adderss", txtadress.Text);

                //cmd.Parameters.AddWithValue("@EmailId", txtemail.Text);

                //int res = cmd.ExecuteNonQuery();
                //if (res > 0)
                //{
                //    Label10.Text = "insert success";
                //}
                //else
                //{

                //    Label10.Text = "not inserted";
                //}


                cmd.ExecuteNonQuery();

                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('SuccessFully Inserted')</script>");

                //lblResultmsg.Text = "success";

            }
        }
        private void ImporttoDatatable()
        {
            //try
            //{
            //    if (FileUpload1.HasFile)
            //    {
            //        string FileName = FileUpload1.FileName;
            //        string path = string.Concat(Server.MapPath("~/Document/" + FileUpload1.FileName));

            //        FileUpload1.PostedFile.SaveAs(path);

            //        OleDbConnection OleDbcon = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=Excel 12.0;");

            //        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [Sheet1$]", OleDbcon);
            //        OleDbDataAdapter objAdapter1 = new OleDbDataAdapter(cmd);
            //        ds = new DataSet();
            //        objAdapter1.Fill(ds);
            //        Dt = ds.Tables[0];
            //    }
            //}
            //catch (Exception ex)
            //{

            //}
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           
           // ImporttoDatatable();

           // UpdateData();
        }
  public void   UpdateData()
        {
            //for (int i = 0; i < Dt.Rows.Count; i++)
            //{
            //    DataRow row = Dt.Rows[i];
            //    int columnCount = Dt.Columns.Count;
            //    string[] columns = new string[columnCount];
            //    for (int j = 0; j < columnCount; j++)
            //    {
            //        columns[j] = row[j].ToString();
            //    }
            //    con.Open();
                
            //    CultureInfo IND_Ci = new CultureInfo("en-IN");
            //    DateTime DOB = Convert.ToDateTime(columns[4].ToString(), IND_Ci);

            //    string sql = "update Faculty_Reg set Password='" + columns[1] + "',Faculty_Name='" + columns[2] + "',Father_Name='" + columns[3] + "',DOB='" + DOB + "',Gender='" + columns[5] + "',MobileNo='" + columns[6] + "',Address='" + columns[7] + "',EmailID='" + columns[8] + "' where Faculty_ID='" + columns[0] + "'";
            //   // sql += "VALUES('" + columns[0] + "','" + columns[1] + "','" + columns[2] + "','" + columns[3] + "','" + DOB + "','" + columns[5] + "','" + columns[6] + "','" + columns[7] + "','" + columns[8] + "')";
            //    SqlCommand cmd = new SqlCommand(sql, con);
            //    //cmd.CommandType = CommandType.StoredProcedure;
            //    //cmd.Parameters.AddWithValue("@StudentId", stdidtxt.Text);
            //    //cmd.Parameters.AddWithValue("@StudentName", stdnametxt.Text);
            //    //cmd.Parameters.AddWithValue("@Branch", DropDownList1.SelectedItem.Text);
            //    //cmd.Parameters.AddWithValue("@year", DropDownList2.SelectedItem.Text);

            //    //cmd.Parameters.AddWithValue("@FatherName", txtFather.Text);
            //    //cmd.Parameters.AddWithValue("@Dob", txtdob.Text);
            //    //cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
            //    //cmd.Parameters.AddWithValue("@ContactNo", txtcontact.Text);
            //    //cmd.Parameters.AddWithValue("@Adderss", txtadress.Text);

            //    //cmd.Parameters.AddWithValue("@EmailId", txtemail.Text);

            //    //int res = cmd.ExecuteNonQuery();
            //    //if (res > 0)
            //    //{
            //    //    Label10.Text = "insert success";
            //    //}
            //    //else
            //    //{

            //    //    Label10.Text = "not inserted";
            //    //}


            //    cmd.ExecuteNonQuery();

            //    con.Close();
            //   Label17.Text = "success";

         //   }
        }
  protected void Button1_Click(object sender, EventArgs e)

       {
           CultureInfo ci = new CultureInfo("en-IN");
      con.Open();
      SqlCommand cmd = new SqlCommand("sp_FacReg", con);
      cmd.CommandType = CommandType.StoredProcedure;
      cmd.Parameters.AddWithValue("@Faculty_ID", Facidtxt.Text);
      cmd.Parameters.AddWithValue("@Password", Facidtxt.Text);
      cmd.Parameters.AddWithValue("@Faculty_Name", facnametxt.Text);
      cmd.Parameters.AddWithValue("@Father_Name", facfnametxt.Text);
      cmd.Parameters.AddWithValue("@DOB",Convert.ToDateTime(facdobtxt.Text,ci));
      cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
      cmd.Parameters.AddWithValue("@MobileNO", faccontactnotxt.Text);
      cmd.Parameters.AddWithValue("@Address", facaddtxt.Text);

      cmd.Parameters.AddWithValue("@EmailID", facemailtxt.Text);

      int res = cmd.ExecuteNonQuery();
      if (res > 0)
      {
        //  lblmsg.Text = "insert success";
          ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Successfully Registered')</script>");
          clear();

      }
      else
      {

          //lblmsg.Text = "not inserted";
          ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Registratin Failed')</script>");

      }


  }
  protected void FacCancelBtn_Click(object sender, EventArgs e)
  {
      clear();
  }
      public void clear()
  {

       Facidtxt.Text="";
       txtpwd.Text = "";
       facnametxt.Text = "";
       facfnametxt.Text = "";
       facdobtxt.Text = "";
       RadioButtonList1.ClearSelection();
       faccontactnotxt.Text = "";
       facaddtxt.Text = "";
       facemailtxt.Text = "";
  }
      protected void Button8_Click(object sender, EventArgs e)
      {
          ImporttoDatatable();
          InsertData();
      }
      protected void Button9_Click(object sender, EventArgs e)
      {
          ImporttoDatatable();
          UpdateData();

      }
     
      protected void Button10_Click(object sender, EventArgs e)
      {
          //if (DropDownList3.SelectedItem.ToString() == "Excel")
          //{

          //    //Panel1.Visible = true;
          //    //Panel2.Visible = false;
          //    Button5.Visible = true;
          //    Button6.Visible = true;
          //}
          //if (DropDownList3.SelectedItem.ToString() == "One By One")
          //{
          //    Panel2.Visible = true;
          //    Panel1.Visible = false;
          //}
      }
      protected void Button6_Click(object sender, EventArgs e)
      {
          //ImporttoDatatable();
          //UpdateData();
         
          //Panel1.Visible = true;
          //Label13.Visible = true;
          //Button4.Visible = true;
          //FileUpload1.Visible = true;
          //Button9.Visible = true;
          //Button5.Visible = true;
          //Button6.Visible = true;
         
      }
}


    
