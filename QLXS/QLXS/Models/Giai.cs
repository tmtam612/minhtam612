﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLXS.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Giai
    {
        [Display(Name = "Mã Giải thưởng")]
        public string MaGiai { get; set; }
        [Display(Name = "Giá Trị Giải thưởng")]
        [DataType(DataType.Currency)]
        public Nullable<decimal> GiaiThuong { get; set; }
        public Nullable<bool> TinhTrang { get; set; }
    }
}