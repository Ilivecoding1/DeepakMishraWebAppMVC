using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DeepakMishraWebAppMVC.Models;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DeepakMishraWebAppMVC.Controllers
{
    public class RecoverUserController : Controller
    {
        Common objmmc = new Common();
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        // GET: RecoverUser
        public ActionResult RecoverUser()
        {
            return View();
        }

        [HttpPost]
        public ActionResult RecoverUser(RecoverUsername ru)
        {
            
            try
            {
                conn1.Open();
                SqlCommand cmd = new SqlCommand("[MMCDeepak].[RecoverUsername]", conn1);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@LicenseNo", ru.licenseno);

                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ViewData["getusername"] = sdr["Email"].ToString();
                }
            }
            catch(Exception ee)
            {
                //ViewData["errorinusername"] = "Not found due to"+ee.ToString();
            }
            return View();
        }
    }
}