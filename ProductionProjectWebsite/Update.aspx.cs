using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductionProjectWebsite
{
    public partial class Update : System.Web.UI.Page
    {
        //create new customer obj
        Customer cust;
        Customer newCustomer;

        protected void Page_Load(object sender, EventArgs e)
        {

            //Customer cust = new Customer();               //create new customer obj
            cust = new Customer();
            cust = (Customer)Session["CustomerObj"];        //get customer object from cloud


            //*********************************************
            //new customer
            newCustomer = new Customer();

            //***************************************
            //add customer id from old customer
            newCustomer.CustomerId = cust.CustomerId;
            //***************************************

            newCustomer.CustFirstName = txtUpdateFirstName.Text;
            newCustomer.CustLastName = txtUpdateLastName.Text;
            newCustomer.CustAddress = txtUpdateAddress.Text;
            newCustomer.CustCity = txtUpdateCity.Text;
            newCustomer.CustProv = ddlUpdateProv.Text;
            newCustomer.CustPostal = txtUpdatePostal.Text;
            newCustomer.CustCountry = txtUpdateCountry.Text;
            newCustomer.CustHomePhone = txtUpdateHomePhone.Text;
            newCustomer.CustBusPhone = txtUpdateBusPhone.Text;
            newCustomer.CustEmail = UpdateEmail.Text;
            newCustomer.CustUserName = txtUpdateUserName.Text;
            newCustomer.CustPassword = Password.Text;

            newCustomer.AgentId = cust.AgentId; //keep the same ...
            //*********************************************

            //test labels
            lblOldCust.Text = cust.ToString();
            lblNewCust.Text = newCustomer.ToString();

            //*******************************************************
            //*******************************************************
            //need to put this in (!IsPostBack) otherwise it will keep OVERWRITING CHANGES!
            if (!IsPostBack)
            {
                // CustomerId, CustFirstName, CustLastName, CustAddress, " +
                //"CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, CustBusPhone, " +
                //"CustEmail, AgentId, CustUserName, CustPassword " +

                //fill in data
                txtUpdateFirstName.Text = cust.CustFirstName;
                txtUpdateLastName.Text = cust.CustLastName;
                txtUpdateAddress.Text = cust.CustAddress;
                txtUpdateCity.Text = cust.CustCity;
                ddlUpdateProv.Text = cust.CustProv;
                txtUpdatePostal.Text = cust.CustPostal;
                txtUpdateCountry.Text = cust.CustCountry;
                txtUpdateHomePhone.Text = cust.CustHomePhone;
                txtUpdateBusPhone.Text = cust.CustBusPhone;
                UpdateEmail.Text = cust.CustEmail;
                txtUpdateUserName.Text = cust.CustUserName;
                Password.Text = cust.CustPassword;
            }
            //*******************************************************
            //*******************************************************
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //old customer
            //Customer oldCustomer = new Customer();
            ////oldCustomer = (Customer)Session["CustomerObj"];
            //oldCustomer = cust;



            int my_id = cust.CustomerId;

            //update customer info
            if(CustomerDB.UpdateCustomer(my_id, cust, newCustomer))
            //if (CustomerDB.UpdateCustomer(cust.CustomerId, newCustomer))
            {
                //if successful update do this
                lblMessage.Text = "Your customer information was updated successfully!";
                lblMessage.ForeColor = System.Drawing.Color.LightGreen;
                Session["CustomerObj"] = newCustomer;

            }
            else
            {
                //if not successful do this 
                lblMessage.Text = "Your customer information did not update.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnUpdateExit_Click(object sender, EventArgs e)
        {

        }

        protected void btnViewPurchPacks_Click1(object sender, EventArgs e)
        {

        }
    }
}