using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DeepakMishraWebAppMVC.Models;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace DeepakMishraWebAppMVC.Controllers
{
    public class UpdateNewPasswordController : Controller
    {
        Common objmmc = new Common();
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        // GET: UpdateNewPassword
        public ActionResult UpdateNewPassword()
        {
            return View();
        }
        [HttpPost]
        public ActionResult UpdateNewPassword(UpdateNewPassword unp)
        {


            string emailid = Session["emailid"].ToString().Trim();
            //string txtemail = Request.Form["email"].ToString();
            //txtemail= Session["emailid"].ToString().Trim();
            try
            {
                conn1.Open();
                SqlCommand cmd = new SqlCommand("[MMCDeepak].[UpdatePassword]", conn1);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email", emailid.ToString().Trim());
                cmd.Parameters.AddWithValue("@Password", unp.password);
                cmd.Parameters.AddWithValue("@ConfirmPassword", unp.confpass);
                if (ModelState.IsValid)
                {
                    cmd.ExecuteNonQuery();

                    ViewData["updated"] = "Your password has been sucessfully chenged/updated. Go to Login page and try to login";

                    //make object of createemailbody function.
                    string body = this.createEmailBody("Dear User", "Your Password Change Information, You have successfully changed or updated your password now try to login again at.", "http://www.mmcsoftsystems.in/Login/Loginpage");
                    // email confirmation
                    MailMessage mail = new MailMessage();

                    mail.From = new MailAddress(objmmc.fromemailid);
                    mail.To.Add(new MailAddress(emailid.ToString().Trim()));

                    mail.Subject = "Your Password Reset Completed.";
                    mail.Body = body;

                    /////////////////////////////////////////////////////////////////////////////////////////////////////
                    mail.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "relay-hosting.secureserver.net";//port no 25 for godaddy domain and host will be relay-hosting.secureserver.net and enable ssl will be false.
                    smtp.Port = 25;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    System.Net.NetworkCredential credential = new System.Net.NetworkCredential();
                    credential.UserName = objmmc.fromemailid;
                    credential.Password = objmmc.pwd;
                    smtp.Credentials = credential;
                    smtp.EnableSsl = false;
                    smtp.Send(mail);

                }
                
            }
            catch(Exception ee)
            {
                //throw ee;
               // ViewData["notupdated"] = "Password has not updated or session expired, Kindly due to error" + ee.ToString() ;

            }
            
            return View();
        }
        private string createEmailBody(string userName, string title, string message)

        {

            string body = string.Empty;
            //using streamreader for reading my htmltemplate   

            using (StreamReader reader = new StreamReader(Server.MapPath("~/EmailHTMLFormat.html")))

            {

                body = reader.ReadToEnd();

            }

            body = body.Replace("{UserName}", userName); //replacing the required things  

            body = body.Replace("{Title}", title);

            body = body.Replace("{message}", message);

            return body;

        }
    }
}