using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WestWindModels
{
    class Employee
    {
        public int EmployeeID { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string TitleOfCourtesy { get; set; }
        public string JobTitle { get; set; }
        public int? ReportsTo { get; set; }
        public DateTime HireDate { get; set; }
        public string OfficePhone { get; set; }
        public string Extension { get; set; }
        public DateTime BirthDate { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Region { get; set; }
        public string PostalCode { get; set; }
        public string Country { get; set; }
        public string HomePhone { get; set; }
        public byte[] Photo { get; set; }
        // Mime type tells the browser the type of image it is so that it can render it
        public string _PhotoMimeType; //use a field as my "backing store"
        public string PhotoMimeType   // an explicitly immplemented property
        {
            get { return _PhotoMimeType;  }
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    _PhotoMimeType = null;
                else
                    _PhotoMimeType = value.ToLower();
            }
        }
        public string Notes { get; set; }
        public bool? Active { get; set; }
        public DateTime? TerminationDate { get; set; }
        public bool OnLeave { get; set; }
        public string LeaveReason { get; set; }
        public DateTime? ReturnDate { get; set; }

        //Not mapped means that the property does NOT correspond with a column in the table (instead we are calculating the value based on other properties
        [NotMapped]
        public string FullName
        { get { return $"{TitleOfCourtesy} {FirstName} {LastName}".Trim(); } } //The trim is there incase TitleOfCourtesy is null 
                                                                               //(it would remove the extra space at the beginning)

        [NotMapped]
        public string FormalName
        { get { return $"{LastName}, {FirstName}"; } }
    }
}
