using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace DeepakMishraWebAppMVC.Models
{
    public class ResetPassword
    {
        [Required(ErrorMessage = "Email id required to reset your password")]
        [Display(Name = "Enter Email Id")]
        [DataType(DataType.EmailAddress)]
        [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "Please enter valid email id")]
        public string email { get; set; }
    }
}