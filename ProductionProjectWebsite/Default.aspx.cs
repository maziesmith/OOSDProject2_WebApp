using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductionProjectWebsite //Steve Silliker
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerObj"]==null)
            {
                LnkExplorePackages.Visible = false;
                lblWelcomeLogin.Visible = false;
                LnkUpdateInfo.Visible = false;
                btnCreateAcct.Visible = true;
                btnLoginDefault.Visible = true;
                btnCustomerPackages.Visible = false;
            }
            else
            {
                Customer customer = (Customer)Session["CustomerObj"];
                lblWelcomeLogin.Text += customer.CustFirstName;         //MarkM
                LnkExplorePackages.Visible = true;
                lblWelcomeLogin.Visible = true;
                LnkUpdateInfo.Visible = true;
                btnCreateAcct.Visible = false;
                btnLoginDefault.Visible = false;
                btnCustomerPackages.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/Packages.aspx");
        }

        protected void btnCreateAcct_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/Register.aspx");
        }
        //MarkM
        protected void btnCustomerPackages_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Account/CustomerPackages.aspx");
        }
    }
}