using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MVCDemo.Areas.Admin.Models
{
    public class Users
    {
        public int ID { get; set; }
        [Required(ErrorMessage = "Nhập UserName", AllowEmptyStrings = false)]
        public string UserCode { get; set; }
        [Required(ErrorMessage = "Nhập Password", AllowEmptyStrings = false)]
        [DataType(System.ComponentModel.DataAnnotations.DataType.Password)]
        [StringLength(50, MinimumLength = 8, ErrorMessage = "8 ký tự")]
        public string Pass { get; set; }
        [DataType(System.ComponentModel.DataAnnotations.DataType.Password)]
        public string PassConfirm { get; set; }

        [Required(ErrorMessage = "Nhập FullName", AllowEmptyStrings = false)]
        public string FullName { get; set; }
    }
}