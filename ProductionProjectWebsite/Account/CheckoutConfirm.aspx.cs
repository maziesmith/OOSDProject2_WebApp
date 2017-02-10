using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductionProjectWebsite.Account
{
/*
 * Author: Mark Maillet
 * Abstract: This page commits the booking to the database and displays a message indicating whether or not
 * successful
 */
    public partial class CheckoutConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                string errors = CheckoutConfirmDB.MakeBooking((List<Package>)Session["packages"], (Customer)Session["CustomerObj"]);
                if (errors == "")
                {
                List<Package> ps = (List<Package>)Session["packages"];
                Package p = ps[0];
                    Label1.Text = "Congratulations, you have booked your \"" + p.PkgName + "\" vacation! Enjoy!";
                    Session.Remove("Packages");
                }
                else { Label1.Text = "Error confirming booking, contact tech support or try again."; }
            
        }
    }
}