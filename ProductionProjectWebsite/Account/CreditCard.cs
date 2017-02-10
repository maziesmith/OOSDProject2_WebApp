using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProductionProjectWebsite.Account
{
/*
* Author: Kassy Zoschke
* Date: January 25, 2017
* Purpose: Credit card class used to instantiate credit card objects
*/
    public class CreditCard
    {
        public int CreditCardId { get; set; }
        public string CCName { get; set; }
        public string CCNumber { get; set; }
        public DateTime CCExpiry { get; set; }
        public int CustomerId { get; set; }
    }
}