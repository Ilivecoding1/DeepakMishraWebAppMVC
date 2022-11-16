using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace DeepakMishraWebAppMVC.Models
{
    public class RecoverUsername
    {
        //[Required(ErrorMessage = "Email id required to recover User Name")]
        //[Display(Name = "Enter Email Id")]
        //[DataType(DataType.EmailAddress)]
        //[RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "Please enter valid email id")]
        //public string email { get; set; }

        [Required(ErrorMessage = "License No required to recover User Name")]
        [Display(Name = "Enter License No")]
                
        public string licenseno { get; set; }
    }
}