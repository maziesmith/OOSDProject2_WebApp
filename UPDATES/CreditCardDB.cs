using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TECart.App_Code
{
    public static class CreditCardDB
    {
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

            try
            {
                connection.Open();

                int count = insertCommand.ExecuteNonQuery();

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