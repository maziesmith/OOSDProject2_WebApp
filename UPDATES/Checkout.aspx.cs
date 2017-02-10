using ProductionProjectWebsite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECart.App_Code;

namespace TECart
{
    public partial class Checkout : System.Web.UI.Page
    {
        
        Customer cust = new Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            //cust.CustomerId = 146;
            //cust.CustFirstName = "Kassy";
            //cust.CustLastName = "Zoschke";
            //cust.CustAddress = "This is an address";
            //cust.CustCity = "City";
            //cust.CustProv = "Province";
            //cust.CustCountry = "Country";
            //cust.CustHomePhone = "403-123-4567";
            //cust.CustBusPhone = "403-789-4561";
            //cust.CustEmail = "blah@email.ca";

            //Session["CustomerObj"] = cust;

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

        protected void btnTest_Click(object sender, EventArgs e)
        {
            string month = ddlMonth.SelectedValue.ToString();
            string year = ddlYear.SelectedValue.ToString();
            string day = "01";

            CreditCard creditcard = new CreditCard();
            DateTime expiry = DateTime.Parse(year + ", " + month + ", " + day);
            creditcard.CCName = txtNameCredit.Text;
            creditcard.CCNumber = txtCreditNumber.Text;
            creditcard.CCExpiry = expiry;
            creditcard.CustomerId = cust.CustomerId;




            if (CreditCardDB.InsertCreditCardInfo(creditcard.CCName, creditcard.CCNumber, creditcard.CCExpiry, creditcard.CustomerId))
            {
                lblMessage.Text = "SUCCESS!!!!!!!";
            }
            
        }
    }
}