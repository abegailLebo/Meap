using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using System.Net.Configuration;
using MailMessage = System.Net.Mail.MailMessage;
using System.Net;
using System.Configuration;
using System.Net.Mail;

namespace MEAP3._0
{
    public partial class BookSession : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=MARINKIE\\SQLEXPRESS;Initial Catalog=MEAPDB3.1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        
        public void ViewsdsPersonel()
        {
            SqlConnection conn = new SqlConnection("Data Source=MARINKIE\\SQLEXPRESS;Initial Catalog=MEAPDB3.1;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select moduleCode,moduleDescription from stud_mod SM,users U,modules_table M WHERE userid= '" + Session["userid"].ToString() + "' and studid= '" + Session["userid"].ToString() + "' and M.moduleid IN (fstmod,sndmod,thrdmod,frthmod,fifthmod,sxthmod) ", conn);


            conn.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            conn.Close();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("marinkiethupi@gmail.com");
                    mailMessage.To.Add("marinkiethupi@gmail.com");
                    mailMessage.Subject = txtSubject.Text;

                    mailMessage.Body = "<b>Sender Name : </b>" + txtName.Text + "<br/>"
                        + "<b>Sender Email : </b>" + txtEmail.Text + "<br/>"
                        + "<b>Comments : </b>" + txtComments.Text;
                    mailMessage.IsBodyHtml = true;


                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new
                        System.Net.NetworkCredential("marinkiethupi@gmail.com", "0711053259");
                    smtpClient.Send(mailMessage);

                    //Label1.ForeColor = System.Drawing.Color.Blue;
                    // Label1.Text = "Thank you for contacting us";

                    txtName.Enabled = false;
                    txtEmail.Enabled = false;
                    txtComments.Enabled = false;
                    txtSubject.Enabled = false;

                }

            }
            catch (Exception ex)
            {
                // Log the exception information to 
                // database table or event viewer
                Response.Write("<script>alert('Email not sent');</script>");
            }
        }
    }
}