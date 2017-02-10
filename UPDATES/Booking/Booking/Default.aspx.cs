using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Booking
{
    public partial class Default : System.Web.UI.Page
    {
        internal static List<Package> packages;
        internal static Customer customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            EnableViewState = false;
            packages = (List<Package>)Session["Packages"];
            customer = (Customer)Session["Customer"];

            CustFirstName.Text = customer.CustFirstName;
            CustLastName.Text = customer.CustLastName;
            CustAddress.Text = customer.CustAddress;
            CustCity.Text = customer.CustCity;
            CustProv.Text = customer.CustProv;
            CustPostal.Text = customer.CustPostal;
            CustCountry.Text = customer.CustCountry;

            Repeater2.DataSource = packages;
            Repeater2.DataBind();
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
            List<Product> products = TravelExpertsDB.GetPackageProducts(pkgid);
            for (int i = 0; i < products.Count; i++)
            {
                rtn += products[i].ToString() + "<br />";
            }
            return rtn;
        }
    }
}