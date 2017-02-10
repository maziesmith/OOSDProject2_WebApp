using System;
using System.Collections.Generic;
using ProductionProjectWebsite.Account;

namespace ProductionProjectWebsite.Account
{
    /*
     * Author: Kassy Zoschke
     * Date: January 25, 2017
     * Purpose: To show customer packages they have selected to buy
     */

    public partial class Cart : System.Web.UI.Page
    {
        List<Package> packages; // new list of packages
        Package package = new Package();

        //List<Package> buypackages = new List<Package>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["packages"] == null)
            {
                //need a new list (session is blank)
                packages = new List<ProductionProjectWebsite.Account.Package>();
            }
            else
            {
                //or use the session list (because it is not null)
                packages = (List<Package>)Session["packages"];
            }

            //add all list packages to listbox (Dean and Kassy)
            foreach (Package p in packages)
            {
                ListBox2.Items.Add(p.ToString());
            }

            //show total cost of packages
            lblTotalCost.Text = CalcTotal().ToString("c");

        }

        //calculate total cost (based on packages in cart)
        public decimal CalcTotal()
        {
            decimal total = 0;

            foreach (Package p in packages)
            {
                decimal price;
                
                price = p.PkgBasePrice;
                total = total + price;
            }
            return total;
        }

        // when continue to checkout is clicked, redirect to checkout page
        protected void btnToCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Checkout.aspx");
        }

        // when cancel button clicked, go back to packages page
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session["packages"] = null;
            Response.Redirect("~/Account/BrowsePackages.aspx");
        }
    }
}
    
    
               
            
                

            
        

        
   
