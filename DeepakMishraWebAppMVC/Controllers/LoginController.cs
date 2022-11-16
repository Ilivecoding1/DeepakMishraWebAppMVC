using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DeepakMishraWebAppMVC.Models;//import model here to access database fields and controls.
using System.Data;            //import this name space for accessing all sql related keywords
using System.Data.SqlClient;
using System.Configuration;//import this name space for creating attenance connection string
using System.Web.Security; //import this to use cookies and web security related task.

namespace DeepakMishraWebAppMVC.Controllers
{
    public class LoginController : Controller
    {
        //sql connection to access database //first define in web.config file then here.just 2 line of code for database connection. 
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        // GET: Login
        public ActionResult Loginpage()
        {
           
            return View();
        }
        [HttpPost]
        public ActionResult Loginpage(LoginFields lf)//we have to create an object of model releted with this function so we can access field and we need to create always same name function to post data on the web browser because the first one will be used for taking user input.
        {
            try
            {
                conn1.Open();
                SqlCommand cmd = new SqlCommand("[MMCDeepak].[SPLogin]", conn1);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@usertype",lf.Usertype);
                cmd.Parameters.AddWithValue("@username", lf.username);
                cmd.Parameters.AddWithValue("@password", lf.password);
                
                int usercount = (int)cmd.ExecuteScalar();
                if (usercount == 1)
                {
                    if (lf.Usertype == 2)
                    {

                        Session["username"] = lf.username.ToString();
                        Session["password"] = lf.password.ToString();

                        return RedirectToAction("Dashboard", "Home");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "Check your Username and password !!");//one way to show error messages on the form.
                    //ViewData["message"] = "Please check your username and password!!";//second way to show error messages on the form.
                }
            }
            catch (Exception ee)
            {

                
                //ViewData["message"]=ee.ToString();//always use this method to view error if you direct write throw ee then you will face problem.
            }
            conn1.Close();
                return View();
          

        }

    }
}