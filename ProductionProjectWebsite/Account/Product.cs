using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProductionProjectWebsite.Account
{
    public class Product
    {
        public int ProductId { get; set; }
        public string ProdName { get; set; }
        public Supplier Supplier { get; set; }      // Tie supplier to product - Mark
        public Product()
        {
            Supplier = new Supplier();              // Avoid null reference - Mark
        }
        // User-friendly display
        public override string ToString()
        {
            return ProdName + " w/ " + Supplier.SupName;
        }
    }
}