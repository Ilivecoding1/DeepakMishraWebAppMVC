using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DeepakMishraWebAppMVC.Models; //import this name space to access all fields created in reset password model
using System.Net;      //import this namespace for accessing mail related keywords and syntex
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace DeepakMishraWebAppMVC.Controllers
{
    public class ForgotPasswordController : Controller
    {
        Common objmmc = new Common();
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        // GET: ForgotPassword
        public ActionResult ResetPassword()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ResetPassword(ResetPassword rp)
        {
            string txtemail = Request.Form["email"].ToString();

            conn1.Open();
            SqlCommand cmd = new SqlCommand("select Email from [MMCDeepak].[Register] where Email=@email", conn1);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@email",txtemail.ToString().Trim());
            Session["emailid"] = cmd.ExecuteScalar();


            
            
            try
            {
                string body = this.createEmailBody("Dear User", "Your Password Reset Link generated and valid for one time only,Please click on below link to reset password.", "http://www.mmcsoftsystems.in/UpdateNewPassword/UpdateNewPassword?emailid=" + Session["emailid"].ToString().Trim());

                MailMessage mail = new MailMessage();

                mail.From = new MailAddress(objmmc.fromemailid);
                mail.To.Add(new MailAddress(txtemail.ToString().Trim()));

                mail.Subject = "Your Password Reset Request Link.";
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

                ViewData["mailsent"] = "Your Password Reset Link Sent Successfully check your inbox and follow steps to reset your password.";
            }

            catch (Exception ee)
            {
                //throw ee;
                //ModelState.AddModelError("",ee.ToString());
                //ViewData["mailnotsent"] = ee.ToString();
            }
            //ViewBag.Title = "Thank You.";
            //ViewBag.Message = "Please check your email, find an email reset link to reset your password.";
            
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