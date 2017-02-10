using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProductionProjectWebsite.App_Code
{
    public class Product
    {
        public int ProductId { get; set; }
        public string ProdName { get; set; }
        public Supplier Supplier { get; set; }
        public Product()
        {
            Supplier = new Supplier();
        }
        public override string ToString()
        {
            return ProdName + " w/ " + Supplier.SupName;
        }
    }
}