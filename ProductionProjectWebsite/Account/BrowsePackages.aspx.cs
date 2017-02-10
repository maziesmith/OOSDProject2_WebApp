using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProductionProjectWebsite.Account;

namespace ProductionProjectWebsite.Account
{
    /*
     * Author: Kassy Zoschke
     * Date: January 25, 2017
     * Purpose: To enable user to select a package to purchase
     */
    public partial class BrowsePackages : System.Web.UI.Page
    {
        //List<Package> buypackages = new List<Package>();
        //list of all the packages ordered

        List<Package> packages; //declare list
        Package package;        //declare package object

        //PAGE LOAD 
        protected void Page_Load(object sender, EventArgs e)
        {
                //if session is blank or has existing package (Dean and Kassy)
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
        }

        //protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}

        //BUTTON TO BUY PACKAGE (Dean and Kassy)
        protected void txtBuy_Click(object sender, EventArgs e)
        {
            if (ListBox1.SelectedItem != null)
            {
                //make a new package object
                package = new Package();

                //grabbing selected item from listbox
                package.PkgName = (ListBox1.SelectedItem.ToString());
                //grabbing id of selected
                package.PackageId = Convert.ToInt32(ListBox1.SelectedValue);

                //********************
                //need package price
                Package pack2 = new Package();
                pack2 = PackageDB.GetOnePackage(Convert.ToInt32(ListBox1.SelectedValue));
                package.PkgBasePrice = pack2.PkgBasePrice;

                ///
                /// Build rest of package object    -- Mark
                ///
                package.PkgDesc = pack2.PkgDesc;
                package.PkgStartDate = pack2.PkgStartDate;
                package.PkgEndDate = pack2.PkgEndDate;

                //********************

                //add to list
                packages.Add(package);

                //saves the session
                Session["packages"] = packages;

                //go to cart page
                Response.Redirect("Cart.aspx");
            }
        }
    }
}