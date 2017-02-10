using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProductionProjectWebsite;

namespace ProductionProjectWebsite.Account
{
/*
 * Author: Mark Maillet
 * Abstract: This page displays customers accumulated packages and charge totals
 */
    public partial class CustomerPackages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Customer customer = (Customer)Session["CustomerObj"];
            List<Package> packages = PackageDB.GetCustomerPackages(customer);

            //Display packages
            Repeater1.DataSource = packages;
            Repeater1.DataBind();

            //Calculate total charges
            decimal totalcharges = 0;
            for (int i = 0; i < packages.Count; i++)
            {
                totalcharges += packages[i].PkgBasePrice;
            }
            TotalCharges.Text = totalcharges.ToString("c");
        }
        protected string ShortDate(DateTime date)
        {
            string d = date.ToString();
            d = d.Substring(0, d.IndexOf(' '));
            return d;
        }
        protected string ConvertPrice(decimal price)
        {
            return price.ToString("c");
        }
        protected string ShowProducts(int pkgid)
        {
            string rtn = "";
            List<Product> products = CheckoutConfirmDB.GetPackageProducts(pkgid);
            for (int i = 0; i < products.Count; i++)
            {
                rtn += products[i].ToString() + "<br />";
            }
            return rtn;
        }
    }
}