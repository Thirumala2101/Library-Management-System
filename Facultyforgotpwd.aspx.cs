using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Facultyforgotpwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Sendbtn_Click(object sender, EventArgs e)
    {
        try
        {
            //DataSet ds = new DataSet();
            //using (SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=library; Persist Security Info=True; User ID=sa; pwd=123"))
            //{
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand("SELECT faculty_id,contact_no FROM Faculty_Reg Where email_id= '" + TextBox1.Text.Trim() + "'", con);
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    da.Fill(ds);
            //    con.Close();
            //}

            //if (ds.Tables[0].Rows.Count > 0)
            //{
                MailMessage Msg = new MailMessage();
                //Sender e-mail address.
                Msg.From = new MailAddress(TextBox1.Text);
                // Recipient e-mail address.
                Msg.To.Add(TextBox1.Text);
                Msg.Subject = "Your Password Details";
               // Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your UserName: " + ds.Tables[0].Rows[0]["faculty_id"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["contact_no"] + "<br/><br/>";
                Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your UserName: sampath<br/><br/>";
                Msg.IsBodyHtml = true;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("softwayzz@gmail.com", "shivamani123");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg = null;
                Label1.Text = "Your Password Details Sent to your mail";
                // Clear the textbox valuess
                TextBox1.Text = "";
            //}
            //else
            //{
            //    Label1.Text = "The Email you entered not exists.";
            //}
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}