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
using BAL;
using DAL;
using System.Globalization;
using System.Data.OleDb;
using System.Configuration;

public partial class admin_StudentRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        //{

        //    Response.Redirect("~/admin.aspx/?r=admin/StudentRegistration.aspx");

        //}
        //Panel1.Visible = true;
        Panel2.Visible = false;
        Label6.Visible = true;
        FileUpload1.Visible = false;
        Button6.Visible = true;
       // ImportEceltodatabaseButton.Visible = true;
        //Button4.Visible = true;
        //Label18.Visible = true;
        DropDownList3.Visible = true;
       // Button7.Visible = false;
       // Button8.Visible = false;
        
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); DataSet ds;
    DataTable Dt;
   
  
    protected void Button4_Click(object sender, EventArgs e)
    {
        
        string sql = null;

        //Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=StudentExcelSheet.xls");

        Response.ContentType = "application/vnd.ms-xls";

        con.Open();
        sql = "SELECT * FROM StdRegistration where Branch='"+ DropDownList5.SelectedItem.ToString() +"'";
        SqlDataAdapter dscmd = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        dscmd.Fill(ds);

        int i = ds.Tables[0].Rows.Count;

        Repeater Repeater1 = new Repeater();
        Repeater1.DataSource = ds;
        Repeater1.HeaderTemplate = new MyTemplate(ListItemType.Header, null);
        Repeater1.ItemTemplate = new MyTemplate(ListItemType.Item, ds);
        Repeater1.FooterTemplate = new MyTemplate(ListItemType.Footer, null);
        Repeater1.DataBind();

        int i2 = Repeater1.Items.Count;

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
                   lc = new LiteralControl("<table border=1><tr><th>StudentID</th><th>Password</th><th>StudentName</th><th>Branch</th><th>Year</th><th>FatherName</th><th>DOB</th><th>Gender</th><th>MobileNO</th><th>Adderss</th><th>EmailID</th></tr>");
                    break;
                case ListItemType.Item:
                    lc = new LiteralControl("<tr><td>" + ds.Tables[0].Rows[ctr]["StudentID"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Password"] + "</td> <td>" + ds.Tables[0].Rows[ctr]["StudentName"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Branch"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Year"] + "</td><td>" + ds.Tables[0].Rows[ctr]["FatherName"] + "</td><td>" + ds.Tables[0].Rows[ctr]["DOB"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Gender"] + "</td><td>" + ds.Tables[0].Rows[ctr]["MobileNO"] + "</td><td>" + ds.Tables[0].Rows[ctr]["Adderss"] + "</td><td>" + ds.Tables[0].Rows[ctr]["EmailID"] + "</td> </tr>");
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
        protected void Button3_Click(object sender, EventArgs e)
        {
            ImporttoDatatable();
            InsertData();
        
        }
        private void InsertData()
        {
           con.Open();

        try
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

                CultureInfo IND_Ci = new CultureInfo("en-IN");
               // DateTime DOB = Convert.ToDateTime(columns[6].ToString(), IND_Ci);

                string sql = "INSERT INTO StdRegistration(StudentID,Password,StudentName,Branch,Year,FatherName,DOB,Gender,MobileNo,Adderss,EmailID)";
                sql += "VALUES('" + columns[0] + "','" + columns[1] + "','" + columns[2] + "','" + columns[3] + "','" + columns[4] + "','" + columns[5] + "','" + columns[6] + "','" + columns[7] + "','" + columns[8] + "','" + columns[9] + "','" + columns[10] + "')";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
               // con.Close();
                lblResultmsg.Text = "success";
                Button7.Visible = false;
                ImportEceltodatabaseButton.Visible =false;

            }
            con.Close();
        }


        catch (Exception ex)
        {

        }
        }
        private void ImporttoDatatable()
        {
            DataSet ds;

            try
            {
                if (FileUpload1.HasFile)
                {
                    string FileName = FileUpload1.FileName;
                    string path = string.Concat(Server.MapPath("~/Document/" + FileUpload1.FileName));

                    FileUpload1.PostedFile.SaveAs(path);

                    OleDbConnection OleDbcon = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=Excel 12.0;");

                    OleDbCommand cmd = new OleDbCommand("SELECT * FROM [StudentExcelSheet$]", OleDbcon);
                    OleDbDataAdapter objAdapter1 = new OleDbDataAdapter(cmd);
                    ds = new DataSet();
                    objAdapter1.Fill(ds);
                    Dt = ds.Tables[0];
                }
            }
            catch (Exception ex)
            {

            }
        }
        //protected void Button5_Click(object sender, EventArgs e)
        //{
        //    ImporttoDatatable();
        //    updatedata();
        //}

        private void updatedata()
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
           //     DateTime DOB = Convert.ToDateTime(columns[6].ToString(), IND_Ci);

                string sql = "Update StdRegistration set Password='" + columns[1] + "',StudentName='" + columns[2] + "',Branch='" + columns[3] + "',Year='" + columns[4] + "',FatherName='" + columns[5] + "',DOB='" + columns[6] + "',Gender='" + columns[7] + "',MobileNo='" + columns[8] + "',Adderss='" + columns[9] + "',EmailID='" + columns[10] + "' where StudentID='" + columns[0].ToString() + "'";
             //   sql += "VALUES('" + columns[0] + "','" + columns[1] + "','" + columns[2] + "','" + columns[3] + "','" + columns[4] + "','" + columns[5] + "','" + DOB + "','" + columns[7] + "','" + columns[8] + "','" + columns[9] + "','" + columns[10] + "')";
                SqlCommand cmd = new SqlCommand(sql, con);
               
                cmd.ExecuteNonQuery();

                con.Close();
                lblResultmsg.Text = "success";

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CultureInfo ci = new CultureInfo("en-IN");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_StdReg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", stdidtxt.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@StudentName", stdnametxt.Text);
            cmd.Parameters.AddWithValue("@Branch", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@year", DropDownList2.SelectedItem.Text);

            cmd.Parameters.AddWithValue("@FatherName", txtFather.Text);
            cmd.Parameters.AddWithValue("@DOB", Convert.ToDateTime(txtdob.Text,ci));
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@MobileNO", txtcontact.Text);
            cmd.Parameters.AddWithValue("@Adderss", txtadress.Text);

            cmd.Parameters.AddWithValue("@EmailId", txtemail.Text);

            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                lblmsg.Text = "insert success";
            }
            else
            {

                lblmsg.Text = "not inserted";
            }


           
        }
       
        protected void Button6_Click(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedItem.ToString() == "Excel")
            {

                //Panel1.Visible = true;
                Panel2.Visible = false;
                Button7.Visible = true;
                Button8.Visible = true;
            }
            else if (DropDownList3.SelectedItem.ToString() == "One By One")
            {
                Label18.Visible = false;
                DropDownList5.Visible = false;
                Panel2.Visible = true;
                Panel1.Visible = false;
            }


            else if (DropDownList3.SelectedItem.ToString() == "Download")
            {
                Label18.Visible = true;
                DropDownList5.Visible = true;
                Button4.Visible = true;
                Panel2.Visible = false;
                Panel1.Visible = true;
            }

        }
        protected void Button7_Click(object sender, EventArgs e)
        {
           // Panel1.Visible = true;

            Label17.Visible = true;
            FileUpload1.Visible = true;
            Button5.Visible = false;
            ImportEceltodatabaseButton.Visible = true;
            Button4.Visible = false;
            Button7.Visible = true;
            Button8.Visible = true;
        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Label18.Visible = true;
            DropDownList5.Visible = true;
            Panel1.Visible = true;
            Label17.Visible = true;
            FileUpload1.Visible = true;
            Button5.Visible = true;
            ImportEceltodatabaseButton.Visible = false;
            Button4.Visible = true;
            Button7.Visible = true;
            Button8.Visible = true;

            ImporttoDatatable();
            updatedata();
            
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button5_Click(object sender, EventArgs e)
        {

        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedItem.ToString() == "Excel")
            {

                //Panel1.Visible = true;
                Panel2.Visible = false;
                Button7.Visible = true;
                Button8.Visible = true;
            }
            else if (DropDownList3.SelectedItem.ToString() == "One By One")
            {
                Label18.Visible = false;
                DropDownList5.Visible = false;
                Panel2.Visible = true;
                Panel1.Visible = false;
            }


            else if (DropDownList3.SelectedItem.ToString() == "Download")
            {
                Label18.Visible = true;
                DropDownList5.Visible = true;
                Button4.Visible = true;
                Panel2.Visible = false;
                Panel1.Visible = true;
            }

        }
}
