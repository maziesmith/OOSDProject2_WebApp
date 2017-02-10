using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductionProjectWebsite.Account
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (CustomerDB.TestUniqueUserPassword(txtLoginUserName.Text, Password.Text))
            {
                //user isn't registered yet
                lblLoginUser.Text = "login failed";
                lblLoginUser.Visible = true;                                         
            }
            else
            {
                //user is registered

                //Get Customer info with CustomerId
                Session["CustomerObj"] =
                    CustomerDB.GetCustomer(CustomerDB.GetCustomerId(txtLoginUserName.Text, Password.Text));
                lblLoginUser.Text = "login successful";
                lblLoginUser.Visible = true;

                Response.Redirect("~/Default.aspx");
            }
        }

        protected void btnUpdateExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}