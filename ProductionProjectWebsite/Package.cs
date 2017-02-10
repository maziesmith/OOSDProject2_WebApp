using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductionProjectWebsite.App_Code
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
        public Package()
        {
            Products = new List<Product>();
        }
        public override string ToString()
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