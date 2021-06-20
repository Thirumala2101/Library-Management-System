using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Globalization;
using System.Configuration;

public partial class admin_studentreturnbook : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VMRApplication"].ConnectionString); DataSet ds = new DataSet();
    SqlDataAdapter da = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Aname"] == null || string.IsNullOrEmpty(Session["Aname"].ToString()))
        {

            Response.Redirect("~/admin.aspx/?r=admin/studentreturnbook.aspx");


        }
        Button1.Visible = false;
       
       //.Visible = false;
        //.Visible = false;
    }

    
    protected void closebtn_Click(object sender, EventArgs e)
    {

    }
    protected void Submitbtn_Click(object sender, EventArgs e)
    {
        Bind();
       
     
    }
    protected void chkTest_CheckedChanged(object sender, EventArgs e)
    {
        int SelectedCheckCount = 0;
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[6] { new DataColumn("StudentId"), new DataColumn("BookId"), new DataColumn("IssueDate"), new DataColumn("ActualReturnDate"), new DataColumn("ReturnDate"), new DataColumn("LateFee") });
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked)
                {

                    SelectedCheckCount++;

                    string StudentId = (row.Cells[1].FindControl("lblStudentId") as Label).Text;
                    string BookId = (row.Cells[2].FindControl("lblBookId") as Label).Text;
                    string IssueDate = (row.Cells[3].FindControl("lblIssueDate") as Label).Text;
                    string ActualReturnDate = (row.Cells[4].FindControl("lblActualReturnDate") as Label).Text;
                    string ReturnDate = (row.Cells[5].FindControl("txtReturnDate2") as Label).Text;
                    string LateFee = (row.Cells[6].FindControl("txtLateFee2") as Label).Text;


                    dt.Rows.Add(StudentId, BookId, IssueDate, ActualReturnDate, ReturnDate, LateFee);
                }
            }
        }

        if (SelectedCheckCount == 0)
        {
            Button1.Visible = false;
            
        }

        else
        {
            Button1.Visible = true;
           

        }

        gvSelected.DataSource = dt;
        gvSelected.DataBind();
    }


    private void Bind()
    {
         SqlDataReader sdr;
        try
        {
            con.Open();

            //select R.SID, R.Branch, R.Regulation,R.Current_year, S.Sub from STUDENT_REG as R INNER JOIN SUBJECTS_REG as S ON  R.Branch=S.Branch and R.Regulation=S.Regulation and R.Current_year=S.Current_year_sem where R.Branch='CSE' and R.Regulation='R09' and S.Current_year_sem='II'


            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_getReturnBook";
            cmd.Connection = con;
            
            cmd.Parameters.AddWithValue("@StudentId", txtStudentId.Text);

           
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {

                sdr.Close();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
                Button1.Visible = true;
            }
            else
            {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid StudentId')</script>");
            }
            
        }

        catch (Exception ex)
        {

        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            Button1.Visible = true;

            //else
            //{
            //    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Student-ID')</script>");
            //}
        }

    }
    private void Bind1()
    {
        SqlDataReader sdr;
        try
        {
            con.Open();

            //select R.SID, R.Branch, R.Regulation,R.Current_year, S.Sub from STUDENT_REG as R INNER JOIN SUBJECTS_REG as S ON  R.Branch=S.Branch and R.Regulation=S.Regulation and R.Current_year=S.Current_year_sem where R.Branch='CSE' and R.Regulation='R09' and S.Current_year_sem='II'


            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_getReturnBook";
            cmd.Connection = con;

            cmd.Parameters.AddWithValue("@StudentId", txtStudentId.Text);


            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {

                sdr.Close();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
                Button1.Visible = true;
            }

            GridView1.DataBind();
        }

        catch (Exception ex)
        {

        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();


            //else
            //{
            //    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Student-ID')</script>");
            //}
        }

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        try
        {
           
            TextBox ddl = new TextBox();
            ddl = (TextBox)GridView1.Rows[e.RowIndex].FindControl("textbox1");
            con.Open();
            string StudentId = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lblStudentId"))).Text;


            string BookID = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lblBookId"))).Text;
            string IssueDate = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lblIssueDate"))).Text;
            string ReturnDate = ((TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtReturnDate"))).Text;
            int LateFee=0;
            LateFee = Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtLateFee"))).Text);

            string ActualReturnDate = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lblActualReturnDate"))).Text;
            CultureInfo en = new CultureInfo("en-IN");
            ReturnDate = Convert.ToDateTime(DateTime.Now.ToShortDateString(), en).ToString("dd/MM/yyyy");

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_StdUpdtReturnBook";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@StudentId", StudentId);
            cmd.Parameters.AddWithValue("@BookId", BookID);
            cmd.Parameters.AddWithValue("@IssueDate",Convert.ToDateTime(IssueDate,en));
            cmd.Parameters.AddWithValue("@ReturnDate", Convert.ToDateTime(ReturnDate,en));
            cmd.Parameters.AddWithValue("@ActualReturnDate",Convert.ToDateTime(ActualReturnDate,en));
            cmd.Parameters.AddWithValue("@LateFee", LateFee);
            


            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                Label2.Text = "updated success";
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
        Bind();

    }


    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = -1;

        ////int index = childGridView.EditIndex;
        ////GridViewRow row = childGridView.Rows[index];

        ////TextBox txtModel = (TextBox)row.FindControl("txtModel");

        //Label lblActualReturnDate = (Label)(GridView1.Rows[e.NewEditIndex].Cells[5].FindControl("lblActualReturnDate"));

        ////Label txtReturnDate2 = (Label)(e.Row.FindControl("txtReturnDate2"));
        //TextBox txtReturnDate = (TextBox)(GridView1.Rows[e.NewEditIndex].FindControl("txtReturnDate"));

        ////Label txtLateFee2 = (Label)(e.Row.FindControl("txtLateFee2"));
        //TextBox txtLateFee = (TextBox)(GridView1.Rows[e.NewEditIndex].FindControl("txtLateFee"));


        ////System.Web.UI.ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "Script", string.Format("Calculate('{0}','{1}',{2})", txtReturnDate.ClientID, lblActualReturnDate.ClientID, txtLateFee.ClientID), true);

        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Calculate('" + txtReturnDate.ClientID + "','" + lblActualReturnDate.ClientID + "','" + txtLateFee.ClientID + "');", true);

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;

        Bind();


    }
  
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblActualReturnDate = (Label)(e.Row.FindControl("lblActualReturnDate"));

                Label txtReturnDate2 = (Label)(e.Row.FindControl("txtReturnDate2"));
                

                Label txtLateFee2 = (Label)(e.Row.FindControl("txtLateFee2"));
                

                CultureInfo en = new CultureInfo("en-in");
                txtReturnDate2.Text = DateTime.Now.ToString("dd/MM/yyyy");
                DateTime date1 = Convert.ToDateTime(lblActualReturnDate.Text,en);
                DateTime date2 = Convert.ToDateTime(txtReturnDate2.Text, en);

                


                TimeSpan timespan;
                
                timespan = (date2 - date1);
                int timeDifference = timespan.Days;


                if (timeDifference > 0)
                {
                    //txtLateFee.Text = Convert.ToString(timeDifference * 1);

                    txtLateFee2.Text = Convert.ToString(timeDifference * 10);

                }
                else
                {
                    txtLateFee2.Text = "0";
                }
            }

        }

        catch (Exception ex)
        {

        }

        finally
        {

        }
    }

    

    protected void GetSelectedRecords(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[6] { new DataColumn("StudentId"), new DataColumn("BookId"), new DataColumn("IssueDate"), new DataColumn("ActualReturnDate"), new DataColumn("ReturnDate"), new DataColumn("LateFee")});
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked)
                {
                    string StudentId = (row.Cells[1].FindControl("lblStudentId") as Label).Text;
                    string BookId = (row.Cells[2].FindControl("lblBookId") as Label).Text;
                    string IssueDate = (row.Cells[3].FindControl("lblIssueDate") as Label).Text;
                    string ActualReturnDate = (row.Cells[4].FindControl("lblActualReturnDate") as Label).Text;
                    string ReturnDate = (row.Cells[5].FindControl("txtReturnDate2") as Label).Text;
                    string LateFee = (row.Cells[6].FindControl("txtLateFee2") as Label).Text;


                    dt.Rows.Add(StudentId, BookId, IssueDate, ActualReturnDate, ReturnDate, LateFee);
                }
            }
        }
        gvSelected.DataSource = dt;
        gvSelected.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        int noOfUpdatedRecords = 0;
        int i = 0;

        try
        {

      

            //TextBox ddl = new TextBox();
            //ddl = (TextBox)GridView1.Rows[e.RowIndex].FindControl("textbox1");
            con.Open();
           DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[6] { new DataColumn("StudentId"), new DataColumn("BookId"), new DataColumn("IssueDate"), new DataColumn("ActualReturnDate"), new DataColumn("ReturnDate"), new DataColumn("LateFee") });
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked== true)
                {
                    string StudentId = (row.Cells[1].FindControl("lblStudentId") as Label).Text;
                    string BookId = (row.Cells[2].FindControl("lblBookId") as Label).Text;
                    string IssueDate = (row.Cells[3].FindControl("lblIssueDate") as Label).Text;
                    string ActualReturnDate = (row.Cells[4].FindControl("lblActualReturnDate") as Label).Text;
                    string ReturnDate = (row.Cells[5].FindControl("txtReturnDate2") as Label).Text;
                    string LateFee = (row.Cells[6].FindControl("txtLateFee2") as Label).Text;
               
            
            CultureInfo en = new CultureInfo("en-IN");
            //ReturnDate = Convert.ToDateTime(DateTime.Now.ToShortDateString(), en).ToString("dd/MM/yyyy");

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_StdUpdtReturnBook";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@StudentId", StudentId);
            cmd.Parameters.AddWithValue("@BookId", BookId);
            cmd.Parameters.AddWithValue("@IssueDate", Convert.ToDateTime(IssueDate, en));
            cmd.Parameters.AddWithValue("@ReturnDate", Convert.ToDateTime(ReturnDate, en));
            cmd.Parameters.AddWithValue("@ActualReturnDate", Convert.ToDateTime(ActualReturnDate, en));
            cmd.Parameters.AddWithValue("@LateFee", LateFee);
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
                Label2.Text = "All Selected Records updated successfully";
                Button1.Visible = false;
                //  btnprint.Visible = true;
            }

            else
            {
                Label2.Text = "updated not success";
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
       
        GridView1.EditIndex = -1;
        Bind1();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnprint_Click(object sender, EventArgs e)
    {

    }
}
