using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Booking
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage!=null)
            {
                string errors = TravelExpertsDB.MakeBooking((List<Package>)Session["Packages"], (Customer)Session["Customer"]);
                if (errors == "")
                {
                    Label1.Text = "Success";
                    Session.Remove("Packages");
                }
                else { Label1.Text = "Fail"; }
            }
        }
    }
}