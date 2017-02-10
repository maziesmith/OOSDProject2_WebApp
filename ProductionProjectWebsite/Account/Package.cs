using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProductionProjectWebsite.Account;

namespace ProductionProjectWebsite.Account
{
    public class Package
    {
        public int PackageId { get; set; }
        public string PkgName { get; set; }
        public DateTime PkgStartDate { get; set; }
        public DateTime PkgEndDate { get; set; }
        public string PkgDesc { get; set; }
        public decimal PkgBasePrice { get; set; }
        public decimal PkgAgencyCommission { get; set; }
        public List<Product> Products { get; set; }
        public override string ToString()
        {
            return PkgName;
        }
        public Package()
        {
            Products = new List<Product>();
        }
        public string ShowProducts()
        {
            string rtn = "";
            for (int i = 0; i < Products.Count; i++)
            {
                rtn += Products[i].ToString() + "\n";
            }
            return rtn;
        }
    }

    
    

    
}