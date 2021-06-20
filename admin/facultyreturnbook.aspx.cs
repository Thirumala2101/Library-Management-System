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
public partial class admin_facultyreturnbook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); DataSet ds = new DataSet();
    SqlDataAdapter da = new SqlDataAdapter();
    CultureInfo en = new CultureInfo("en-IN");
    protected void Page_Load(object sender, EventArgs e)
    {
       // lblmsg.Text = "No Records";
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/Facultyreturnbook.aspx");

        }
        btnUpdate.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Bind();
    }
 

    private void Bind()
    {

        try
        {
            con.Open();

            //select R.SID, R.Branch, R.Regulation,R.Current_year, S.Sub from STUDENT_REG as R INNER JOIN SUBJECTS_REG as S ON  R.Branch=S.Branch and R.Regulation=S.Regulation and R.Current_year=S.Current_year_sem where R.Branch='CSE' and R.Regulation='R09' and S.Current_year_sem='II'

            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_getFacultyReturnBook";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@faculty_id", txtFacultyID.Text);


            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
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
    private void Bind1()
    {

        try
        {
            con.Open();

            //select R.SID, R.Branch, R.Regulation,R.Current_year, S.Sub from STUDENT_REG as R INNER JOIN SUBJECTS_REG as S ON  R.Branch=S.Branch and R.Regulation=S.Regulation and R.Current_year=S.Current_year_sem where R.Branch='CSE' and R.Regulation='R09' and S.Current_year_sem='II'


            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_getFacultyReturnBook";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@faculty_id", txtFacultyID.Text);


            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
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

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        try
        {
            
         
       
            con.Open();
            string StudentId = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lblFacultyID"))).Text;


            string BookID = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lblBookId"))).Text;
            string IssueDate = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lblIssueDate"))).Text;
            string ReturnDate = ((TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtReturnDate"))).Text;
           
            SqlCommand cmd = new SqlCommand();
            CultureInfo en = new CultureInfo("en-IN");
            ReturnDate = Convert.ToDateTime(DateTime.Now.ToShortDateString(), en).ToString("dd/MM/yyyy");
           // DateTime ReturnDate=DateTime.Now;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_FacUpdReturnBook";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@faculty_id", StudentId);
            cmd.Parameters.AddWithValue("@BookId", BookID);
            cmd.Parameters.AddWithValue("@IssueDate", IssueDate);
            cmd.Parameters.AddWithValue("@ReturnDate", ReturnDate);
                     

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

        GridView1.EditIndex = -1;

        Bind();

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = -1;
      

        
    }
   
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {


                Label Label1 = (Label)(e.Row.FindControl("Label1"));
                
                Label1.Text = DateTime.Now.ToString("dd/MM/yyyy");
                

            }

        }

        catch (Exception ex)
        {

        }

        finally
        {

        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void chkTest_CheckedChanged(object sender, EventArgs e)
    {
        int SelectedCheckCount = 0;
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[4] { new DataColumn("faculty_id"), new DataColumn("BookId"), new DataColumn("IssueDate"), new DataColumn("ReturnDate") });
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked == true)
                {

                    SelectedCheckCount++;

                    string faculty_id = (row.Cells[1].FindControl("lblFacultyID") as Label).Text;
                    string BookId = (row.Cells[2].FindControl("lblBookId") as Label).Text;
                    string IssueDate = (row.Cells[3].FindControl("lblIssueDate") as Label).Text;
                    string ReturnDate = (row.Cells[4].FindControl("txtReturnDate") as Label).Text;



                    dt.Rows.Add(faculty_id, BookId, IssueDate, ReturnDate);
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
           dt.Columns.AddRange(new DataColumn[4] { new DataColumn("faculty_id"), new DataColumn("BookId"), new DataColumn("IssueDate"), new DataColumn("ReturnDate") });
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked== true)
                {
                    
                    string faculty_id = (row.Cells[1].FindControl("lblFacultyID") as Label).Text;
                    string BookId = (row.Cells[2].FindControl("lblBookId") as Label).Text;
                    string IssueDate = (row.Cells[3].FindControl("lblIssueDate") as Label).Text;
                    string ReturnDate = (row.Cells[4].FindControl("txtReturnDate") as Label).Text;
                   
               
            CultureInfo en = new CultureInfo("en-IN");
            ReturnDate = Convert.ToDateTime(DateTime.Now.ToShortDateString(), en).ToString("dd/MM/yyyy");

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_FacUpdtReturnBook";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Faculty_ID", faculty_id);
            cmd.Parameters.AddWithValue("@BookID", BookId);
            cmd.Parameters.AddWithValue("@IssueDate", Convert.ToDateTime(IssueDate, en));
            cmd.Parameters.AddWithValue("@ReturnDate", Convert.ToDateTime(ReturnDate, en));
           


            i++;

            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                noOfUpdatedRecords++;

            }
                }


           }
            }

            if (i == noOfUpdatedRecords)
            {

                Label2.Text = "All Selected Records updated successfully";
                Button1.Visible = false;
                btnUpdate.Visible = false;

            }

            else
            {
                Label2.Text = "updated not success";
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
       
        GridView1.EditIndex = -1;
        Bind1();

    }

    }
