using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TECart.App_Code
{
    public class CreditCard
    {
        public int CreditCardId { get; set; }
        public string CCName { get; set; }
        public string CCNumber { get; set; }
        public DateTime CCExpiry { get; set; }
        public int CustomerId { get; set; }
    }
}