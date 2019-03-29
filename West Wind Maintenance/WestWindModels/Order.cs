using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WestWindModels
{
    [Table("Orders")]
    public class Order
    {
        //NOTE: Primitive value types can be made "nullable" by adding a ? after the datatype
        [Key]                                                           // SQL Types
        public int OrderID { get; set; }                                // int      NOT NULL
        public int SalesRepID { get; set; }                             // int      NOT NULL
        public string CustomerID { get; set; }                          // string    
        public DateTime? OrderDate { get; set; }
        public DateTime? RequiredDate { get; set; }
        public decimal? Freight { get; set; }
        // NOTE: Strings are reference types, and can store a null value by definition
        public string ShipName { get; set; }
        public string ShipAddress { get; set; }
        public string ShipCity { get; set; }
        public string ShipRegion { get; set; }
        public string ShipPostalCode { get; set; }
        public string ShipCountry { get; set; }
        public string Comments { get; set; }
    }
}
