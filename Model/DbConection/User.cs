namespace Model.DbConection
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("User")]
    public partial class User
    {
        public int ID { get; set; }

        [StringLength(40)]
        public string UserCode { get; set; }

        [StringLength(100)]
        public string Pass { get; set; }

        [StringLength(255)]
        public string FullName { get; set; }

        [StringLength(1)]
        public string Status { get; set; }
    }
}
