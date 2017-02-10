using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProductionProjectWebsite.Account
{
/*
* Author: Kassy Zoschke
* Date: January 25, 2017
* Purpose: Used to access "CreditCards" table from the Travel Expert Database
*/
    public static class CreditCardDB
    {
        // insert credit card info into database
        public static bool InsertCreditCardInfo(string ccname, string ccnumber, DateTime ccexpiry, int customerid)
        {
            bool success = false;

            // connect to database
            SqlConnection connection = TravelExpertsDB.GetConnection();

            // get selectString
            string insertString = "Insert into CreditCards (CCName, CCNumber, CCExpiry, CustomerId) " +
                                   "values (@CCName, @CCNumber, @CCExpiry, @CustomerId)";
                                 
            SqlCommand insertCommand = new SqlCommand(insertString, connection);
            //insertCommand.Parameters.AddWithValue("@CreditCardId", creditcardid);
            insertCommand.Parameters.AddWithValue("@CCName", ccname);
            insertCommand.Parameters.AddWithValue("@CCNumber", ccnumber);
            insertCommand.Parameters.AddWithValue("@CCExpiry", ccexpiry);
            insertCommand.Parameters.AddWithValue("@CustomerId", customerid);

            // try insert 
            try
            {
                connection.Open();

                int count = insertCommand.ExecuteNonQuery();

                // if executes onces, success is true
                if (count == 1 )
                {
                    success = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                connection.Close();
            }
            return success;
        }
    }
}