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
 * Abstract: This page displays the list of packages sitting in the shopping cart in addition to the
 * customer data & their payment information.
 */
    public partial class CheckoutSummary : System.Web.UI.Page
    {
        internal static List<Package> packages;
        internal static Customer customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            packages = (List<Package>)Session["packages"];
            customer = (Customer)Session["CustomerObj"];
            CreditCard creditcard = (CreditCard)Session["CreditCard"];

            CustFirstName.Text = customer.CustFirstName;
            CustLastName.Text = customer.CustLastName;
            CustAddress.Text = customer.CustAddress;
            CustCity.Text = customer.CustCity;
            CustProv.Text = customer.CustProv;
            CustPostal.Text = customer.CustPostal;
            CustCountry.Text = customer.CustCountry;
            CustHomePhone.Text = customer.CustHomePhone;
            CustBusPhone.Text = customer.CustBusPhone;
            CustEmail.Text = customer.CustEmail;

            CCName.Text = creditcard.CCName;
            CCNumber.Text = MaskCC(creditcard.CCNumber);
            CCExpiry.Text = ShortDate(creditcard.CCExpiry);

            Repeater2.DataSource = packages;
            Repeater2.DataBind();
        }
        // Replace middle digits of credit card with hidden values
        protected string MaskCC(string ccnumber)
        {
            string rtn = "";
            rtn = ccnumber.Substring(0, 4);
            rtn += "-xxxx-xxxx-";
            rtn += ccnumber.Substring(12, 4);
            return rtn;
        }
        // Removes time fields from Datetime object YYYY-MM-DD HH:MM:SS XM
        protected string ShortDate(DateTime date)
        {
            string d = date.ToString();
            d = d.Substring(0, d.IndexOf(' '));
            return d;
        }
        // Display decimal price correctly as money
        protected string ConvertPrice(decimal price)
        {
            return price.ToString("c");
        }
        // Output products and suppliers
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
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/CheckoutConfirm.aspx");
        }

        protected void btnConfirmBack_Click(object sender, EventArgs e)
        {
            //Clear the shopping session
            Session["CreditCard"] = null;
            Session["packages"] = null;
            //Go back to start
            Response.Redirect("/Account/BrowsePackages.aspx");
        }
    }
}