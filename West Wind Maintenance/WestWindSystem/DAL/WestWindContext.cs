using System;
using System.Collections.Generic;
using System.Data.Entity;          // DbContext is in this namespace
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WestWindModels;

namespace WestWindSystem.DLL
{
    // Our DAL class will inherit from Entity Framework's DbContext class in order to get all functionality 
    // to map our Entity classes to the database tables.
    // you can think of this context classs as being a virtual representation of the database.
    class WestWindContext : DbContext
    {
        #region Constructors
        public WestWindContext() : base("name=WWdb") //name of the connection string
        {
            // We can programmatically prevent the default behaviour that EF uses, 
            // which is to create the database if it can't fint it based on the
            // connection string name above.
            Database.SetInitializer<WestWindContext>(null); //Prevent initialization
        }
        #endregion

        #region Properties
        public DbSet<Product> Products { get; set; }
        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<Category> Categories { get; set; }
        #endregion
    }
}
