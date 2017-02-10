using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductionProjectWebsite.Account
{
    public partial class ViewPackages2 : System.Web.UI.Page
    {
        Customer cust;
        List<int> packageIds;
        Package pack;
        Package pack2;

        protected void Page_Load(object sender, EventArgs e)
        {
            cust = (Customer)Session["CustomerObj"];
            if (cust != null)
            {
                int id = cust.CustomerId;       //customer id


                packageIds = new List<int>();   //list of package id's
                packageIds = PackageDB.GetPackageIDs(id);

                Repeater1.DataSource = PackageDB.GetCustomerPackages(cust);
                Repeater1.DataBind();
            }
        }
        
        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

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
    }
}