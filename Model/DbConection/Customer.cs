namespace Model.DbConection
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Customer")]
    public partial class Customer
    {
        public int ID { get; set; }

        [StringLength(50)]
        public string CustomerCode { get; set; }

        [StringLength(255)]
        public string CustomerName { get; set; }

        [StringLength(500)]
        public string Adress { get; set; }

        [StringLength(50)]
        public string Phone { get; set; }
    }
}
