using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace DeepakMishraWebAppMVC.Models
{
    public class RegisterFields
    {
        [Required(ErrorMessage = "Salutation required")]
        [Display(Name = "Salutation")]
        public string Salute { get; set; }

        [Required(ErrorMessage ="Client Name required")]
        [Display(Name ="Client Name")]
        public string ClientName { get; set; }

        [Required(ErrorMessage = "Company Name Required.")]
        [Display(Name = "Company Name")]
        public string CompanyName { get; set; }

        [Required(ErrorMessage = "Email Address Required.")]
        [Display(Name = "Email Id")]
        [DataType(DataType.EmailAddress)]
        [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "Please enter valid email id")]
        public string email { get; set; }

        [Required(ErrorMessage = "Contact no Required.")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$",ErrorMessage ="Please enter valid Phone no")]
        [Display(Name = "Contact No")]
        public string phone { get; set; }

        [Required(ErrorMessage = "Full Address required")]
        [Display(Name = "Address")]
        public string Address { get; set; }

       // [Required(ErrorMessage = "*")]
       // [Display(Name = "City")]
       // public int CITYID { get; set; }
       // public string CITYNAME { get; set; }

        [Required(ErrorMessage = "Bussiness Type required")]
        [Display(Name = "Bussiness Type")]
        public string ComapnyType { get; set; }

        [Required(ErrorMessage = "Product Name required")]
        [Display(Name = "Product Name")]
        public string ProductName { get; set; }

        [Required(ErrorMessage = "*")]
        [Display(Name = "Product Type")]
        public string ProductType { get; set; }

        [Required(ErrorMessage = "License No required")]
        [Display(Name = "License No")]
        public string LicenseNo { get; set; }

        [Required(ErrorMessage = "License Valid From Required.")]
        [Display(Name = "Vailid From")]
        [DataType(DataType.Date)]
        public string ValidFrom { get; set; }

        [Required(ErrorMessage = "License Valid To Required.")]
        [Display(Name = "Vailid Till")]
        [DataType(DataType.Date)]
        public string ValidTill { get; set; }

        //[Required(ErrorMessage = "Username Required.")]
        //[StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        //[Display(Name = "Username")]
        //public string username { get; set; }

        [Required(ErrorMessage = "Password Required.")]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string password { get; set; }

        [Required(ErrorMessage = "Confirm Password Required.")]
        [Display(Name = "Confirm Password")]
        [DataType(DataType.Password)]
        [Compare("password", ErrorMessage = "The password and confirmation password do not match.")]
        public string confpass { get; set; }

    }
}