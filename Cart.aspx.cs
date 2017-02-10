using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECart.App_Code;

namespace TECart
{

    public partial class Cart : System.Web.UI.Page
    {
        List<Package> packages;
        Package package = new Package();

        //List<Package> buypackages = new List<Package>();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                    //package = (Package)Session["package"];
                    packages = (List<Package>)Session["packages"];              
            }

            //add all list packages to listbox (Dean and Kassy)
            foreach (Package p in packages)
            {
                ListBox2.Items.Add(p.ToString());
            }

            //show total cost of packages
            lblTotalCost.Text = CalcTotal().ToString("c");

        }

        //create a new method
        public decimal CalcTotal()
        {
            decimal total = 0;

            foreach (Package p in packages)
            {
                decimal price;
                
                price = p.PkgBasePrice;
                total = total + price;
            }
            return total;
        }
    }
}
    
    
               
            
                

            
        

        
   
