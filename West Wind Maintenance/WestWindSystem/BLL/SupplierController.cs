using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WestWindModels;
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

        public Supplier GetSupplier(int id)
        {
            using (var context = new WestWindContext())
            {
                //The .Find() method will look up the object based on its pk
                return context.Suppliers.Find(id);
            }
        }
    }
}
