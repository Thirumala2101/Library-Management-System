using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.Configuration;

public partial class admin_BookBankstudentReturnBook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString);
    DataSet ds = new DataSet();
  
    SqlDataAdapter da = new SqlDataAdapter();
    CultureInfo en = new CultureInfo("en-IN");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/BookBankstudentReturnBook.aspx");

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    private void Bind()
    {

        try
        {
            con.Open();

            //select R.SID, R.Branch, R.Regulation,R.Current_year, S.Sub from STUDENT_REG as R INNER JOIN SUBJECTS_REG as S ON  R.Branch=S.Branch and R.Regulation=S.Regulation and R.Current_year=S.Current_year_sem where R.Branch='CSE' and R.Regulation='R09' and S.Current_year_sem='II'


            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_getBookBankstudentReturnBook";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@StudentId", TextBox1.Text);
             da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            GridView2.DataSource = ds.Tables[0];
            GridView2.DataBind();
            //}
            //else
            //{ lblstatus.Text = "No Records"; }
        }

        catch (Exception ex)
        {

        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();

        }


    }



    protected void GridView2_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {


                Label Label5 = (Label)(e.Row.FindControl("Label5"));

                Label5.Text = DateTime.Now.ToString("dd/MM/yyyy");


            }

        }

        catch (Exception ex)
        {

        }

        finally
        {

        }
    }
    protected void GridView2_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {

        try
        {



            con.Open();
            string StudentId = ((Label)(GridView2.Rows[e.RowIndex].FindControl("lblStudentId"))).Text;


            string BookID = ((Label)(GridView2.Rows[e.RowIndex].FindControl("lblBookId"))).Text;
            string IssueDate = ((Label)(GridView2.Rows[e.RowIndex].FindControl("lblIssueDate"))).Text;
            string ReturnDate = ((TextBox)(GridView2.Rows[e.RowIndex].FindControl("txtReturnDate"))).Text;
            string ActualReturnDate = ((Label)(GridView2.Rows[e.RowIndex].FindControl("lblActualReturnDate"))).Text;


            SqlCommand cmd = new SqlCommand();
            CultureInfo en = new CultureInfo("en-IN");
            ReturnDate = Convert.ToDateTime(DateTime.Now.ToShortDateString(), en).ToString("dd/MM/yyyy");
            // DateTime ReturnDate=DateTime.Now;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_StdUpdtBookBankStdReturnBook";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@StudentId", StudentId);
            cmd.Parameters.AddWithValue("@BookId", BookID);
            cmd.Parameters.AddWithValue("@IssueDate", IssueDate);
            cmd.Parameters.AddWithValue("@ReturnDate", ReturnDate);
            cmd.Parameters.AddWithValue("@ActualReturnDate", ActualReturnDate);


            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                lblmsg.Text = "updated success";
            }
            else
            {
                lblmsg.Text = "updated not success";
            }

        }
        catch (Exception ex)
        {

        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();

        }

        GridView2.EditIndex = -1;

        Bind();
    }
    protected void GridView2_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = -1;
    }
    protected void GridView2_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        Bind();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Bind();
    }
    protected void chkTest_CheckedChanged(object sender, EventArgs e)
    {
        int SelectedCheckCount = 0;
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[5] { new DataColumn("StudentId"), new DataColumn("BookId"), new DataColumn("IssueDate"), new DataColumn("ReturnDate"), new DataColumn("ActualReturnDate") });
        foreach (GridViewRow row in GridView2.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked == true)
                {

                    SelectedCheckCount++;

                    string StudentId = (row.Cells[1].FindControl("lblStudentId") as Label).Text;
                    string BookId = (row.Cells[2].FindControl("lblBookId") as Label).Text;
                    string IssueDate = (row.Cells[3].FindControl("lblIssueDate") as Label).Text;

                    string ReturnDate = (row.Cells[4].FindControl("Label5") as Label).Text;
                    string ActualReturnDate = (row.Cells[5].FindControl("lblActualReturnDate") as Label).Text;



                    dt.Rows.Add(StudentId, BookId, IssueDate, ReturnDate, ActualReturnDate);
                }
            }
        }

        if (SelectedCheckCount == 0)
        {
            Button1.Visible = false;
            btnUpdate.Visible = true;

        }

        else
        {
            btnUpdate.Visible = true;
            Button1.Visible = true;


        }


    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {


        int noOfUpdatedRecords = 0;
        int i = 0;

        try
        {



            //TextBox ddl = new TextBox();
            //ddl = (TextBox)GridView1.Rows[e.RowIndex].FindControl("textbox1");
            con.Open();
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[5] { new DataColumn("StudentId"), new DataColumn("BookId"), new DataColumn("IssueDate"), new DataColumn("ReturnDate"), new DataColumn("ActualReturnDate") });
            foreach (GridViewRow row in GridView2.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                    if (chkRow.Checked == true)
                    {

                        string StudentId = (row.Cells[1].FindControl("lblStudentId") as Label).Text;
                        string BookId = (row.Cells[2].FindControl("lblBookId") as Label).Text;
                        string IssueDate = (row.Cells[3].FindControl("lblIssueDate") as Label).Text;
                        string ReturnDate = (row.Cells[4].FindControl("Label5") as Label).Text;
                        string ActualReturnDate = (row.Cells[5].FindControl("lblActualReturnDate") as Label).Text;


                        CultureInfo en = new CultureInfo("en-IN");
                        // DateTime date = Convert.ToDateTime();
                        DateTime ReturnDate1 = DateTime.Now;
                       // DateTime date = Convert.ToDateTime(ReturnDate, en);
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sp_StdUpdtBookBankStdReturnBook";
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@StudentId", StudentId);
                        cmd.Parameters.AddWithValue("@BookID", BookId);
                        cmd.Parameters.AddWithValue("@IssueDate", IssueDate);
                        cmd.Parameters.AddWithValue("@ReturnDate", ReturnDate1);
                        cmd.Parameters.AddWithValue("@ActualReturnDate", ActualReturnDate);



                        i++;

                        int res = cmd.ExecuteNonQuery();
                        if (res > 0)
                        {
                            noOfUpdatedRecords++;

                        }
                    }


                }
            }
            if (i > 0)
            {

                if (i == noOfUpdatedRecords)
                {

                    lblmsg.Text = "All Selected Records updated successfully";
                    Button1.Visible = false;
                    btnUpdate.Visible = false;

                }

                else
                {
                    lblmsg.Text = "updated not success";
                } 

            }

        }

        catch (Exception ex)
        {

        }

        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }

        GridView2.EditIndex = -1;
        Bind();

    }

}