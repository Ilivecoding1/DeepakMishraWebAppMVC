using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DeepakMishraWebAppMVC.Models;



namespace DeepakMishraWebAppMVC.Controllers
{
    
    public class HomeController : Controller
    {
        Common objmmc = new Common();   
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        public ActionResult Thanks()
        {
            
            return View();
        }
        
        //[HttpPost]
        public ActionResult Dashboard()
        {
           if (Session["username"].ToString()!=null)
            {
                Session["username"].ToString().Trim();
                string emailid = Session["username"].ToString().Trim();
                //second step
                List<DashboardModel> dashmodellist = new List<DashboardModel>();//made a list of all columns/fields of the model to call them here
                                                                                //first step..
                conn1.Open();
                SqlCommand cmd = new SqlCommand("select *from [MMCDeepak].[Register] where Email=@emailid", conn1);
                cmd.Parameters.AddWithValue("@emailid", emailid.ToString().Trim());
                cmd.CommandType = CommandType.Text;
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    //third step
                    var dashboardmodel = new DashboardModel();     //created object of the model class to access the column name field name.       
                    dashboardmodel.salute = rdr["Salute"].ToString();
                    dashboardmodel.ename = rdr["Ename"].ToString();
                    dashboardmodel.email = rdr["Email"].ToString();
                    dashboardmodel.phone = rdr["Phone"].ToString();
                    dashboardmodel.cname = rdr["Cname"].ToString();
                    dashboardmodel.caddress = rdr["CAddress"].ToString();
                    dashboardmodel.ctype = rdr["CType"].ToString();
                    dashboardmodel.prodname = rdr["ProdName"].ToString();
                    dashboardmodel.prodtype = rdr["ProdType"].ToString();
                    dashboardmodel.licenseno = rdr["LicenseNo"].ToString();
                    dashboardmodel.validfrom = rdr["ValidFrom"].ToString();
                    dashboardmodel.validto = rdr["ValidTo"].ToString();
                    dashmodellist.Add(dashboardmodel);//fourth step.


                }

                return View(dashmodellist);//fifth step..
            }
            return ViewBag.Message= "Your Session has expired please login again at"+"http://www.mmcsoftsystems.in/Login";
        }
        public ActionResult Index()
        {
           
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Products()
        {
            return View();
        }
        public ActionResult Services()
        {
            return View();
        }
        public ActionResult Download()
        {
            return View();
        }
        public ActionResult Enquiry()
        {
           
            return View();
        }
        public ActionResult Careers()
        {
            return View();
        }
        public ActionResult Clients()
        {
            return View();
        }
        //public ActionResult Catalog()
        //{
        //    return View();
        //}
        public ActionResult Policy()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(UserLogin u)
        {
            // this action is for handle post (login)
            if (ModelState.IsValid) // this is check validity
            {
               
                         return RedirectToAction("AfterLogin");
                   
                }
            
            return View(u);
        }

        public ActionResult AfterLogin()
        {
           
                return RedirectToAction("Index");
           
        }
        public ActionResult Payroll()
        {
            return View();

        }
        public ActionResult HRMS()
        {
            return View();

        }
        public ActionResult Attendance()
        {
            return View();

        }
        public ActionResult Compliances()
        {
            return View();

        }
        public ActionResult ESS()
        {
            return View();

        }

        [HttpPost]
        public ViewResult feedbackrequest()
        {          
            
            string txtName = Request["txtname"];
            string txtCmpname = Request["txtcmpname"];
            string txtFeedback = Request["txtfeedback"];
            string txtfeedbackresponse = "";
            
              try
                {

                    MailMessage mail = new MailMessage();

                    mail.From = new MailAddress(objmmc.fromemailid);

                mail.To.Add(new MailAddress(objmmc.toemailid));
                mail.To.Add(new MailAddress(objmmc.toemailid1));
                //mail.To.Add(new MailAddress("info@mmcsoftsystems.in"));

                mail.Subject = "Hello, We have Feedback Email From" + " " + txtName.ToString().Trim() + " " + txtCmpname.ToString().Trim() + ".";
                    mail.Body = txtFeedback.ToString().Trim();

                   /////////////////////////////////////////////////////////////////////////////////////////////////////

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

                    //txtfeedbackresponse = "Thank you for your valuable feedback Mr." + txtName;

                }

                catch (Exception ee)
                {
                    txtfeedbackresponse = "Message not sent due to :" + ee.ToString();

                }
                ViewBag.Title = "Thank You.";
                ViewBag.Message = "Thank You for you valuable feedback Mr." + txtName + ".";
                return View();
            }
                        
         public ActionResult ApplicationForm()
        {
            return View();

        }
        public ActionResult DesktopApplication()
        {
            return View();
        }
        public ActionResult WebApplication()
        {
            return View();

        }
        public ActionResult MobileApplication()
        {
            return View();

        }
        public ActionResult Technology()
        {
            return View();

        }
        public ActionResult Billing()
        {
            return View();

        }

        //[HttpPost]
        //public ActionResult newenquiry(HttpPostedFileBase fileUploader)
        //{
            
        //    string EnquiryType = Request["EnquiryType"];
        //    string BussinesType = Request["BussinesType"];
        //    string txtName =    Request["txtName"];
        //    string txtcmpName =  Request["txtcmpName"];
        //    string txtcmpsize = Request["txtcmpsize"];
        //    string txtemail =   Request["txtemail"];
        //    string txtcpname = Request["txtcpname"];
        //    string txtcpphone = Request["txtcpphone"];
        //    string txtcppdesig = Request["txtcppdesig"];
        //    string txtmessage = Request["txtmessage"];
        //    string txtfeedbackresponse = "";
        //    try
        //    {

        //        MailMessage mail = new MailMessage();

        //        mail.From = new MailAddress(objmmc.fromemailid);

        //        mail.To.Add(new MailAddress(objmmc.toemailid));
        //        mail.To.Add(new MailAddress(objmmc.toemailid1));
        //        //mail.To.Add(new MailAddress("info@mmcsoftsystems.in"));

        //        mail.Subject = "Hello, We Have " + EnquiryType +" Email From" + " " + txtName.ToString().Trim() + ",Company Name: " + txtcmpName.ToString().Trim() + ".";
        //        mail.Body ="\n"+ "New Enquiry For: " + EnquiryType.ToString().Trim() + "\n" + "From: Mr." + txtName.ToString().Trim() + "\n" + "Company Name: " + txtcmpName.ToString().Trim() + "\n" + "Bussines Type: " + BussinesType.ToString().Trim() + "\n" + "Company Size: " + txtcmpsize.ToString().Trim() + "\n" + "Email Id: " + txtemail.ToString().Trim() + "\n" + "Contact Person: " + txtcpname.ToString().Trim() + "\n" + "Phone No: " + txtcpphone.ToString().Trim() + "\n" + "Designation: " + txtcppdesig.ToString().Trim() + "\n"+"Description: "+" " + txtmessage.ToString().Trim();

        //        if (fileUploader != null && fileUploader.ContentLength > 0)
        //        {
        //            string fileName = Path.GetFileName(fileUploader.FileName);
        //            mail.Attachments.Add(new Attachment(fileUploader.InputStream, fileName));
        //        }
        //        mail.IsBodyHtml = false;
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "relay-hosting.secureserver.net";//port no 25 for godaddy domain and host will be relay-hosting.secureserver.net and enable ssl will be false.
        //        //smtp.Host = "smtp.gmail.com";
        //        smtp.Port = 25;
        //        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        //        System.Net.NetworkCredential credential = new System.Net.NetworkCredential();
        //        credential.UserName = objmmc.fromemailid;
        //        credential.Password = objmmc.pwd;
        //        smtp.Credentials = credential;
        //        smtp.EnableSsl = false;
        //        smtp.Send(mail);

        //        //mail.IsBodyHtml = false;
        //        //SmtpClient smtp = new SmtpClient();
        //        //smtp.Host = "smtp.gmail.com";
        //        //smtp.EnableSsl = true;
        //        //NetworkCredential NetworkCred = new NetworkCredential("mmcsoftware26@gmail.com","anna_2005");
        //        //smtp.UseDefaultCredentials = true;
        //        //smtp.Credentials = NetworkCred;
        //        //smtp.Port = 587;
        //        //smtp.Send(mail);

        //    }

        //    catch (Exception ee)
        //    {
        //        throw ee;
        //        //txtfeedbackresponse = "Message not sent due to :" + ee.ToString();

        //    }
        //    ViewBag.Title = "Thank You.";
        //    ViewBag.Message = "Thank You for your enquiry Mr." + " " + txtName + " " + "We will contact you shortly on" + " " + txtcpphone + " " + "and" + " " + txtemail + ".";
        //     return View();
        //}

        //[HttpPost]
        //public ActionResult jobapplication(HttpPostedFileBase fileUploader1)
        //{
        //    string DesignationFor = Request["DesignationFor"];
        //    string ReferenceType = Request["ReferenceType"];
        //    string txtrefname = Request["txtrefname"];
        //    string txtfullname = Request["txtfullname"];
        //    string txtcurradd = Request["txtcurradd"];
        //    string txtpermadd = Request["txtpermadd"];
        //    string txtemail = Request["txtemail"];
        //    string txtidno = Request["txtidno"];
        //    string txtphone = Request["txtphone"];
        //    string txtcollage = Request["txtcollage"];
        //    string Qualification = Request["Qualification"];
        //    string txtcurrcomp = Request["txtcurrcomp"];
        //    string txtcurrdesig = Request["txtcurrdesig"];
        //    string txtexpr = Request["txtexpr"];
        //    string txtworkfrom = Request["txtworkfrom"];
        //    string txtworkto = Request["txtworkto"];
        //    string txtcursal = Request["txtcursal"];
        //    string txtexpsal = Request["txtexpsal"];
        //    string txtnotice = Request["txtnotice"];
        //    string txttechskill = Request["txttechskill"];
        //    string txtmessage = Request["txtmessage"];
        //    string txtfeedbackresponse = "";
        //    try
        //    {

        //        MailMessage mail = new MailMessage();

        //        mail.From = new MailAddress(objmmc.fromemailid);

        //        mail.To.Add(new MailAddress(objmmc.toemailid));
        //        mail.To.Add(new MailAddress(objmmc.toemailid1));
        //        //mail.To.Add(new MailAddress("info@mmcsoftsystems.in"));

        //        mail.Subject = "Hello, We have Recruitment Email (Post Applied for) " + DesignationFor + " From Mr. " + " " + txtfullname.ToString().Trim() +".";
        //        mail.Body = "\n" + "Post Applied For: " + DesignationFor.ToString().Trim() + "\n" + "From: Mr." + txtfullname.ToString().Trim() + "\n" + "Source Type: " + ReferenceType.ToString().Trim() + "\n" + "Reference Name: " + txtrefname.ToString().Trim() + "\n" + "Current Address: " + txtcurradd.ToString().Trim() + "\n" + "Permanent Address: " + txtpermadd.ToString().Trim() + "\n" + "Email Id: " + txtemail.ToString().Trim() + "\n" + "Identity No: " + txtidno.ToString().Trim() + "\n" + "Phone No: " + txtphone.ToString().Trim() + "\n" + "Collage/University: " + txtcollage.ToString().Trim() + "\n" + "Qualification: " + " " + Qualification.ToString().Trim() + "\n" + "Current Company: " + " " + txtcurrcomp.ToString().Trim() + "\n" + "Current Designation: " + " " + txtcurrdesig.ToString().Trim() + "\n" + "Experience: " + " " + txtexpr.ToString().Trim() + "\n" + "Working From: " + " " + txtworkfrom.ToString().Trim() + "\n" + "Working To: " + " " + txtworkto.ToString().Trim() + "\n" + "Current Salary: " + " " + txtcursal.ToString().Trim() + "\n" + "Expected: " + " " + txtexpsal.ToString().Trim() + "\n" + "Notice Days: " + " " + txtnotice.ToString().Trim() + "\n" + "Tech Skills: " + " " + txttechskill.ToString().Trim() + "\n" + "Description: " + " " + txtmessage.ToString().Trim();

        //        if (fileUploader1 != null && fileUploader1.ContentLength > 0)
        //        {
        //            string fileName = Path.GetFileName(fileUploader1.FileName);
        //            mail.Attachments.Add(new Attachment(fileUploader1.InputStream, fileName));
        //        }
        //        mail.IsBodyHtml = false;
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "relay-hosting.secureserver.net";//port no 25 for godaddy domain and host will be relay-hosting.secureserver.net and enable ssl will be false.
        //        smtp.Port = 25;
        //        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        //        System.Net.NetworkCredential credential = new System.Net.NetworkCredential();
        //        credential.UserName = objmmc.fromemailid;
        //        credential.Password = objmmc.pwd;
        //        smtp.Credentials = credential;
        //        smtp.EnableSsl = false;
        //        smtp.Send(mail);

        //    }

        //    catch (Exception ee)
        //    {
        //        txtfeedbackresponse = "Message not sent due to :" + ee.ToString();

        //    }
        //    ViewBag.Title = "Thank You.";
        //    ViewBag.Message = "Thank You for Applying Mr." + " " + txtfullname +" "+"For the post "+ DesignationFor+ " " + "We are in process of reviewing it and will contact you shortly on" + " " + txtphone + " " + "and" + " " + txtemail + " If we found your profile suitable for this role.";
        //     return View();
        //}

        public ActionResult ManualDownloads()
        {
            var dir = new System.IO.DirectoryInfo(Server.MapPath("~/UploadedFiles/"));
            System.IO.FileInfo[] fileNames = dir.GetFiles("*.*"); List<string> items = new List<string>();
            foreach (var file in fileNames)
            {
                items.Add(file.Name);
            }
            return View(items);
        }
        public FileResult FileDownload(string ImageName)
        {
            var FileVirtualPath = "~/UploadedFiles/" + ImageName;
            return File(FileVirtualPath, "application / force - download", Path.GetFileName(FileVirtualPath));
        }

        public ActionResult Catalog()
        {
            var dir = new System.IO.DirectoryInfo(Server.MapPath("~/ProductCatalog/"));
            System.IO.FileInfo[] fileNames = dir.GetFiles("*.*"); List<string> items = new List<string>();
            foreach (var file in fileNames)
            {
                items.Add(file.Name);
            }
            return View(items);
        }
        public FileResult FileDownload1(string ImageName)
        {
            var FileVirtualPath = "~/ProductCatalog/" + ImageName;
            return File(FileVirtualPath, "application / force - download", Path.GetFileName(FileVirtualPath));
        }


    }
}