using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Booking
{
    public class Global : System.Web.HttpApplication
    {
        List<Package> packages = new List<Package> { TravelExpertsDB.GetPackage(2),TravelExpertsDB.GetPackage(1), TravelExpertsDB.GetPackage(4) };
        Customer customer = TravelExpertsDB.GetCustomer(135);
        protected void Application_Start(object sender, EventArgs e)
        {
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Packages"] = packages;
            Session["Customer"] = customer;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}