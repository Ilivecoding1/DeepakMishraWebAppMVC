using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DeepakMishraWebAppMVC.Models;//inclued this namespace to import all fields from the models...
using System.Configuration;//include this name space to use configuration manager while creating connection string
using System.Data;          //include this for database related activity.
using System.Data.SqlClient;
using System.IO;
using System.Net.Mail;

namespace DeepakMishraWebAppMVC.Controllers
{
    public class RegisterController : Controller
    {
        Common objmmc = new Common();
        //one line code to create connection from web config to this controller, main connection placed in to the web config file.
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        // GET: Register
        public ActionResult Register()
        {

            //List<RegisterFields> cityname = new List<RegisterFields>();//made list object of registerfield modelname.
            //conn1.Open();
            //SqlCommand cmd1 = new SqlCommand("[MMCDeepak].[SPGetCity]", conn1);
            //cmd1.CommandType = CommandType.StoredProcedure;

            //SqlDataReader rdr = cmd1.ExecuteReader();
            //while (rdr.Read())
            //{
            //    RegisterFields rf1 = new RegisterFields(); //made object of register model directly
            //    //rf1.CITYID = rdr["CITYID"];
            //    rf1.CITYNAME = rdr["CITYNAME"].ToString();
            //    cityname.Add(rf1);

            //}
            //SelectList list = new SelectList(cityname, "CITYNAME", "CITYNAME");
            //ViewBag.DropdownList = list;

            return View();
        }

        [HttpPost]
        public ActionResult Register(RegisterFields rf)//create same name function to use post data on the web browser,also make object of the model to fecth the fields created in the model.
        {


            string licenseno = Request["LicenseNo"].ToString().Trim();
            conn1.Open();
            SqlCommand cmd1 = new SqlCommand("select count(LicenseNo) from [MMCDeepak].[LicenseNo] where LicenseNo=@licenseno", conn1);
            cmd1.CommandType = CommandType.Text;
            cmd1.Parameters.AddWithValue("@licenseno", licenseno.ToString().Trim());
            int UserExists = (int)cmd1.ExecuteScalar();
            if (UserExists == 1)
            {

                try
                {
                    //conn1.Close();
                    // conn1.Open();
                    SqlCommand cmd = new SqlCommand("[MMCDeepak].[SPRegister]", conn1);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Salute", rf.Salute);
                    cmd.Parameters.AddWithValue("@Ename", rf.ClientName);
                    cmd.Parameters.AddWithValue("@CName", rf.CompanyName);
                    cmd.Parameters.AddWithValue("@Email", rf.email);
                    cmd.Parameters.AddWithValue("@Phone", rf.phone);
                    cmd.Parameters.AddWithValue("@CAddress", rf.Address);
                    cmd.Parameters.AddWithValue("@CType", rf.ComapnyType);
                    cmd.Parameters.AddWithValue("@LicenseNo", rf.LicenseNo);
                    cmd.Parameters.AddWithValue("@ProdName", rf.ProductName);
                    cmd.Parameters.AddWithValue("@ProdType", rf.ProductType);
                    cmd.Parameters.AddWithValue("@ValidFrom", rf.ValidFrom);
                    cmd.Parameters.AddWithValue("@ValidTo", rf.ValidTill);
                    //cmd.Parameters.AddWithValue("@CityName", rf.CITYNAME);
                    cmd.Parameters.AddWithValue("@Password", rf.password);
                    cmd.Parameters.AddWithValue("@ConfirmPassword", rf.confpass);
                    if (ModelState.IsValid) //apply this to check wheather all fields have correct value or not if not then query will not execute.
                    {

                        Session["email"] = rf.email.ToString().Trim();
                        Session["password"] = rf.password.ToString().Trim();
                        cmd.ExecuteNonQuery();

                        ViewData["message"] = "Your product registration has been completed successfully.";
                        string emailid = Session["email"].ToString().Trim();
                        string password = Session["password"].ToString().Trim();
                        //make object of createemailbody function.
                        string body = this.createEmailBody("Dear User", "Your Product Registration and Subscription Information", "You have successfully Registered Your Product and Subscribed for payroll services,Your Username is :-" + Session["email"].ToString().Trim() + ",And Your Password is :-" + Session["password"].ToString().Trim() + " ,Now try to login again with username and password to check further information at." + "http://www.mmcsoftsystems.in/Login/Loginpage");
                        // email confirmation
                        MailMessage mail = new MailMessage();

                        mail.From = new MailAddress(objmmc.fromemailid);
                        mail.To.Add(new MailAddress(emailid.ToString().Trim()));

                        mail.Subject = "Your Product Registration and Subscription Completed Sucessfully.";
                        mail.Body = body;

                        /////////////////////////////////////////////////////////////////////////////////////////////////////
                        //port no 587 for gmail,smtp.gmail.com hostname,and enable ssl will be true for gmail.
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

                catch (Exception ee)
                {
                    throw ee;
                    // ModelState.AddModelError("", "License No is not valid please enter valid license no or contact your vendor.");
                    //ViewData["message1"] = ee.ToString();
                }

            }

            else
            {

                ViewData["invalidlicno"] = "Please Enter valid License no or contact to your vender.";
                // ModelState.AddModelError("","Please Enter valide License no or contact to your vender.");

            }



            conn1.Close();
            return View();

        }
        //function to create emailbodyhtml tamplet..
        private string createEmailBody(string userName, string title, string message)

        {

            string body = string.Empty;
            //using streamreader for reading my htmltemplate   

            using (StreamReader reader = new StreamReader(Server.MapPath("~/EmailHTMLFormat1.html")))

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