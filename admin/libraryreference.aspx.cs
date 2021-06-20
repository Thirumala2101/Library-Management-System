using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

public partial class admin_StudentAttendence : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/libraryreference.aspx");

        }
        reference();
       
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    //SqlDataAdapter sda;
    protected void Button1_Click(object sender, EventArgs e)
    {
        


    }
    public void reference()
    {

        lblStdIssueBooks.Text = "";
        lblStdBookBankIssueBooks.Text = "";
        lblFacIssueBooks.Text = "";
        lblCurentLibBooks.Text = "";
        lblTotLibBooks.Text = "";

        SqlCommand cmd = new SqlCommand();



        //sda = new SqlDataAdapter("SELECT BookAuthor,BookEdition, COUNT(*) as Count FROM AddBook GROUP BY BookAuthor,BookEdition HAVING COUNT(*) > 1 Order By BookAuthor  ", con);
        // sda = new SqlDataAdapter("SELECT BookAuthor,BookEdition  FROM AddBook WHERE BookAuthor='" + txtBookName.Text + "' ", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_LibReference";
        cmd.Connection = con;


        cmd.Parameters.Add("@NoOf_studentIssuebooks", SqlDbType.Int);
        cmd.Parameters["@NoOf_studentIssuebooks"].Direction = ParameterDirection.Output;

        // cmd.Parameters.Add("@NoOf_studentBookBankIssuebooks", SqlDbType.Int);
        cmd.Parameters.Add("@NoOf_studentBookBankIssuebooks", SqlDbType.Int).Direction = ParameterDirection.Output;

        //cmd.Parameters.Add("@NoOf_FacultyIssuebooks", SqlDbType.Int);
        cmd.Parameters.Add("@NoOf_FacultyIssuebooks", SqlDbType.Int).Direction = ParameterDirection.Output;

        //cmd.Parameters.Add("@NoOf_Curentlibrarybooks", SqlDbType.Int);
        cmd.Parameters.Add("@NoOf_Curentlibrarybooks", SqlDbType.Int).Direction = ParameterDirection.Output;

        // cmd.Parameters.Add("@NoOf_Totallibrarybooks", SqlDbType.Int);
        cmd.Parameters.Add("@NoOf_Totallibrarybooks", SqlDbType.Int).Direction = ParameterDirection.Output;

        cmd.Parameters.Add("@NoOf_Referncelibrarybooks", SqlDbType.Int).Direction = ParameterDirection.Output;



        con.Open();

        int res = cmd.ExecuteNonQuery();

        //if (res > 0)
        //{
        //    Label5.Text = "Book is issued";
        //}
        //else
        //{

        lblStdIssueBooks.Text = cmd.Parameters["@NoOf_studentIssuebooks"].Value.ToString();
        lblStdBookBankIssueBooks.Text = cmd.Parameters["@NoOf_studentBookBankIssuebooks"].Value.ToString();
        lblFacIssueBooks.Text = cmd.Parameters["@NoOf_FacultyIssuebooks"].Value.ToString();
        Label7.Text = cmd.Parameters["@NoOf_Referncelibrarybooks"].Value.ToString();
        lblCurentLibBooks.Text = cmd.Parameters["@NoOf_Curentlibrarybooks"].Value.ToString();
        lblTotLibBooks.Text = cmd.Parameters["@NoOf_Totallibrarybooks"].Value.ToString();


        //}

        // }



        // DataSet ds = new DataSet();
        // SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //  sda.Fill(ds);
        ////  DataColumn DC = new DataColumn();
        // // DC.ColumnName = "COUNT";
        //  //ds.Tables[0].Columns.Add(DC);
        //  //ds.Tables[0].Rows[0][2] = ds.Tables[0].Rows.Count.ToString();
        //  GridView1.DataSource = ds.Tables[0];
        //  GridView1.DataBind();



        con.Close();
    }
}