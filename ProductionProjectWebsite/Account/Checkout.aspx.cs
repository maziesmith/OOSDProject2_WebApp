using ProductionProjectWebsite;
using ProductionProjectWebsite.Account;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ProductionProjectWebsite.Account
{
 /*
 * Author: Kassy Zoschke
 * Date: January 25, 2017
 * Purpose: To enable user to enter credit card info
 */
   
    public partial class Checkout : System.Web.UI.Page
    {
        
        Customer cust = new Customer(); // instantiate new customer object

        // load customer info from login session
        protected void Page_Load(object sender, EventArgs e)
        {
            cust = (Customer)Session["CustomerObj"];

            txtFirstName.Text = cust.CustFirstName;
            txtLastName.Text = cust.CustLastName;
            txtAddress.Text = cust.CustAddress;
            txtCity.Text = cust.CustCity;
            txtProvince.Text = cust.CustProv;
            txtPostalCode.Text = cust.CustPostal;
            txtCountry.Text = cust.CustCountry;
            txtHomePhone.Text = cust.CustHomePhone;
            txtBusPhone.Text = cust.CustBusPhone;
            txtEmail.Text = cust.CustEmail;



        }

        // test button (button not in use, invisible)
        protected void btnTest_Click(object sender, EventArgs e)
        {
            string month = ddlMonth.SelectedValue.ToString(); //month for credit card expiry
            string year = ddlYear.SelectedValue.ToString(); // year for credit card expiry
            string day = "01"; // default day for credit card expiry

            CreditCard creditcard = new CreditCard();
            DateTime expiry = DateTime.Parse(year + ", " + month + ", " + day);
            creditcard.CCName = txtNameCredit.Text;
            creditcard.CCNumber = txtCreditNumber.Text;
            creditcard.CCExpiry = expiry;
            creditcard.CustomerId = cust.CustomerId;



            // test label for checkout page (not being used in application)
            if (CreditCardDB.InsertCreditCardInfo(creditcard.CCName, creditcard.CCNumber, creditcard.CCExpiry, creditcard.CustomerId))
            {
                lblMessage.Text = "SUCCESS!";
            }
            
        }

        // when "Next" button is clicked, insert credit card info entered into database
        protected void Button1_Click(object sender, EventArgs e)
        {
            string month = ddlMonth.SelectedValue.ToString(); //month for credit card expiry
            string year = ddlYear.SelectedValue.ToString(); // year for credit card expiry
            string day = "01"; // default day for credit card expiry

            // save credit card info
            CreditCard creditcard = new CreditCard();
            DateTime expiry = DateTime.Parse(year + ", " + month + ", " + day);
            creditcard.CCName = txtNameCredit.Text;
            creditcard.CCNumber = txtCreditNumber.Text;
            creditcard.CCExpiry = expiry;
            creditcard.CustomerId = cust.CustomerId;

            // if credit card info insert successful, redirect to confirmation page
            if (CreditCardDB.InsertCreditCardInfo(creditcard.CCName, creditcard.CCNumber, creditcard.CCExpiry, creditcard.CustomerId))
            {
                Session["CreditCard"] = creditcard;
                Response.Redirect("/Account/CheckoutSummary.aspx");
            }
            else
            {
                lblMessage.Text = "Please enter valid information";
            }
        }
    }
}