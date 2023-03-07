using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEAP3._0
{
    public partial class MEAP1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true;//user login link button
                    LinkButton2.Visible = false;//sign up link button
                    LinkButton7.Visible = false;//log out link button
                    LinkButton3.Visible = false;//hello user link button
                    LinkButton10.Visible = false;//view Students link button
                    LinkButton11.Visible = true;//admin login
                    LinkButton12.Visible = false;//schedule


                }
                else if(Session["role"].Equals("student"))
                {
                    LinkButton1.Visible = false;//user login link button
                    LinkButton2.Visible = false;//sign up link button
                    LinkButton7.Visible = true;//log out link button
                    LinkButton3.Text = "Hello " + Session["surname"].ToString();
                    LinkButton3.Visible = true;//hello user link button
                    LinkButton11.Visible = false;//admin login
                    LinkButton5.Visible = true;//view student profile login
                    LinkButton10.Visible = false;//view Students link button
                    LinkButton12.Visible = true;//schedule


                }
                else if (Session["role"].Equals("sdsUser"))
                {
                    LinkButton1.Visible = false;//user login link button
                    LinkButton2.Visible = false;//sign up link button
                    LinkButton7.Visible = true;//log out link button
                    LinkButton3.Text = "Hello " + Session["Surname"].ToString();
                    LinkButton3.Visible = true;//hello user link button
                    LinkButton11.Visible = false;//admin login
                    LinkButton4.Visible = true;//view sds profile login
                    LinkButton10.Visible = true;//view Students link button
                    LinkButton12.Visible = false;//schedule


                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("sdsLogin.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentProfile.aspx");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewStudents.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("sdsProfile.aspx");
        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("schedule.aspx");
        }


        protected void LinkButton7_Click1(object sender, EventArgs e)
        {
           
            Session["student"] = null;
            Session["sdsUser"] = null;
            Session["role"] = null;

            LinkButton1.Visible = true;//user login link button
            LinkButton2.Visible = false;//sign up link button
            LinkButton7.Visible = false;//log out link button
            LinkButton3.Visible = false;//hello user link button
            LinkButton11.Visible = true;//admin login
            LinkButton10.Visible = false;//view Students link button
            LinkButton12.Visible = false;//schedule

            Response.Redirect("homepg.aspx");
        }
    }
}