using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WestWindModels;
using WestWindSystem.DataModels;
using WestWindSystem.DLL;

namespace WestWindSystem.BLL
{
    public class SupplierController
    {
        // Use this class to help with CRUD (Create Read Update Delete) maintenance of our database
        public List<Supplier> ListSuppliers()
        {
            // Make use of our "virtual database" class to get the data
            using (var context = new WestWindContext())
            {
                return context.Suppliers.ToList();
            }
        }

        public List<Country> ListCountries()
        {
            using (var context = new WestWindContext())
            {
                string sql = "SELECT DISTINCT Country as 'Name' FROM Suppliers ORDER BY Country";
                // The .Database property of our DbContext object gives more direct access to the database. With this, we can call
                // methods such as .Execute() or .SqlQuery<TResult>();
                // There's a mapping between the column 'Name' and the property 'Name' of Country class
                var result = context.Database.SqlQuery<Country>(sql);
                return result.ToList();
            }
        }

        public Supplier GetSupplier(int id)
        {
            using (var context = new WestWindContext())
            {
                //The .Find() method will look up the object based on its pk
                return context.Suppliers.Find(id);
            }
        }

        public int AddSupplier(Supplier item)
        {
            using (var context = new WestWindContext())
            {
                context.Suppliers.Add(item);
                context.SaveChanges();
                //After saving changes, my local context object "syncs" up the newlly added supplier's ID that was generated from the table's
                // IDENTITY Constraint
                return item.SupplierID;
            }
        }
    }
}

