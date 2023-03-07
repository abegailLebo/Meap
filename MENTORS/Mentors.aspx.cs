using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Configuration;
using MailMessage = System.Net.Mail.MailMessage;
using System.Net;
using System.Configuration;

namespace MEAP3._0
{
    public partial class Mentors : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
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





