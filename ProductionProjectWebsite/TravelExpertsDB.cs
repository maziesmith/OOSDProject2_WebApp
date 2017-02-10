using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace ProductionProjectWebsite
{

    //*************************************
    //TEAM2 PROJECT (WEBSITE)(ASP.NET)
    //SQL DATABASE CONNECTION (Travel Experts database) (C# code)
    //Dean Jones
    //Jan.17, 2017
    //*************************************

        //<add name="TravelExpertsConnectionString" connectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\61812\Desktop\TEST\TravelExperts.mdf;Integrated Security=True;Connect Timeout=30"
      //providerName="System.Data.SqlClient" />

    public partial class TravelExpertsDB
    {
        /// <summary>
        /// SQL CONNECTION 
        /// </summary>
        public static SqlConnection GetConnection()
        {
            //WEB.CONFIG... connectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TravelExperts.mdf;Integrated Security=True"

            //PULLS CONNECTION STRING OUT OF (WEB.CONFIG) FILE
            string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }
    }
}