using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECart.App_Code;

namespace TECart
{
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
                    packages = new List<App_Code.Package>();
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