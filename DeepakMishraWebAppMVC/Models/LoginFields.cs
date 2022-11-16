using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;//include this namespace for getting all validation keywords

namespace DeepakMishraWebAppMVC.Models
{
    public class LoginFields
    {
        [Required(ErrorMessage ="Please select correct User Type")]
        [Display(Name ="Usertype")]
        public int Usertype { get; set; }

        [Required(ErrorMessage ="Username can not be blank.")]
        [Display(Name ="Username")]
        public string username { get; set; }

        [Required(ErrorMessage ="Password can not be blank.")]
        [Display(Name ="Password")]
        [DataType(DataType.Password)]
        public string password { get; set; }

        [Display(Name ="Remember me?")]
        public bool remember { get; set; }
    }
}