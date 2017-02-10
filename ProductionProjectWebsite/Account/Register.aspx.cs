using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using ProductionProjectWebsite.Models;

namespace ProductionProjectWebsite.Account
{

    public partial class Register : Page 
    {
       // Customer cust;

        protected void Page_Load(object sender, EventArgs e)
        {
        //    if (Session["CustomerObj"] == null)
        //    {

        //    }
        //    else
        //    {
               
        //    }
            

        }

        //Register New Cust; Register BUtton Dean and Steve
        public void CreateUser_Click(object sender, EventArgs e)
        {
            Customer cust = new Customer();
            cust.CustFirstName = txtFirstName.Text;
            cust.CustLastName = txtLastName.Text;
            cust.CustAddress = txtAddress.Text;
            cust.CustCity = txtCity.Text;
            cust.CustProv = ddlProv.Text;
            cust.CustPostal = txtPostal.Text;
            cust.CustCountry = txtCountry.Text;
            cust.CustHomePhone = txtHomePhone.Text;
            cust.CustBusPhone = txtBusPhone.Text;
            cust.CustEmail = Email.Text; // cannot change email name or password. Called in reference file.
            cust.CustUserName = txtUserName.Text;
            cust.CustPassword = Password.Text;

            //TEST TO MAKE SURE (username and password) ARE UNIQUE
            if(CustomerDB.TestUniqueUserPassword(txtUserName.Text, Password.Text))
            {
                lblUser.Visible = false;
                CustomerDB.AddCustomer(cust);       //add new user to database
                Session["CustomerObj"] = cust;

                Response.Redirect("~/Default.aspx");  //go to page
            }
            else
            {
                //do message to user to make (username and password unique)
                
                lblUser.Visible = true;
            }
            

            
        }
    }
}