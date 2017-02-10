using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace ProductionProjectWebsite
{ 

    //*************************************
    //TEAM2 PROJECT (WEBSITE)(ASP.NET)
    //SQL DATABASE (CustomerDB) (C# code)
    //Dean Jones
    //Jan.17, 2017
    //*************************************

public class Customer
    {
        //CONSTRUCTOR
        public Customer() { }

        //GETTERS AND SETTERS
        public int CustomerId { get; set; }
        public string CustFirstName { get; set; }
        public string CustLastName { get; set; }
        public string CustAddress { get; set; }
        public string CustCity { get; set; }
        public string CustProv { get; set; }       
        public string CustPostal { get; set; }
        public string CustCountry { get; set; }
        public string CustHomePhone { get; set; }
        public string CustBusPhone { get; set; }
        public string CustEmail { get; set; }
        public int? AgentId { get; set; }
        public string CustUserName { get; set; }
        public string CustPassword { get; set; }

        public override string ToString()
        {
            return CustomerId.ToString() + ", " +
                CustFirstName + ", " +
                CustLastName + ", " +
                CustAddress + ", " +
                CustCity + ", " +
                CustProv + ", " +
                CustPostal + ", " +
                CustCountry + ", " +
                CustHomePhone + ", " +
                CustBusPhone + ", " +
                CustEmail + ", " +
                AgentId.ToString() + ", " +
                CustUserName + ", " +
                CustPassword;
        }
    }
}