using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;


namespace ProductionProjectWebsite
{

    //*************************************
    //TEAM2 PROJECT (WEBSITE)(ASP.NET)
    //SQL DATABASE (CustomerDB) (C# code)
    //Dean Jones
    //Jan.17, 2017
    //*************************************

    //*************************************
    //TO DO...
    //UPDATE (test not working...)(check query)
    //LOGIN ...
    //add method, (add quotes)
    //INSERT INTO Customers(CustFirstName, CustLastName) VALUES('Dean', 'Jones');
    //TEST FULL QUERY IN (sql server)
    //*************************************

    [DataObject(true)]
    public static class CustomerDB
    {

        /// <summary>
        /// SQL METHOD GET CUSTOMER (returns one row)
        /// </summary>
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static Customer GetCustomer(int custId)
        {
            Customer cust = null; // found customer

            // define connection
            SqlConnection connection = TravelExpertsDB.GetConnection();

            // define the select query command
            //SELECT * FROM Customers
            //WHERE CustomerID = 1002;

            string selectQuery = "SELECT CustomerId, CustFirstName, CustLastName, CustAddress, " +
                "CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, CustBusPhone, " +
                "CustEmail, AgentId, CustUserName, CustPassword " +
                "FROM Customers " +
                "WHERE CustomerId = @CustomerId;";
            SqlCommand selectCommand = new SqlCommand(selectQuery, connection);
            selectCommand.Parameters.AddWithValue("@CustomerId", custId);
            try
            {
                // open the connection
                connection.Open();

                // execute the query
                SqlDataReader reader = selectCommand.ExecuteReader(CommandBehavior.SingleRow);

                // process the result if any
                if (reader.Read()) // if there is technician
                {
                    //create a new customer
                    cust = new Customer();
                    cust.CustomerId = (int)(reader["CustomerId"]);
                    cust.CustFirstName = reader["CustFirstName"].ToString();
                    cust.CustLastName = reader["CustLastName"].ToString();
                    cust.CustAddress = reader["CustAddress"].ToString();
                    cust.CustCity = reader["CustCity"].ToString();
                    cust.CustProv = reader["CustProv"].ToString();
                    cust.CustPostal = reader["CustPostal"].ToString();
                    cust.CustCountry = reader["CustCountry"].ToString() ?? null;
                    cust.CustHomePhone = reader["CustHomePhone"].ToString() ?? null;
                    cust.CustBusPhone = reader["CustBusPhone"].ToString();
                    cust.CustEmail = reader["CustEmail"].ToString();                   
                    cust.CustUserName = reader["CustUserName"].ToString();
                    cust.CustPassword = reader["CustPassword"].ToString();

                    //cust.AgentId = (int)(reader["AgentId"]) ?? null;  //this didn't work
                    //if (AgentId) is null
                    if (reader.IsDBNull(reader.GetOrdinal("AgentId")))
                    {
                        cust.AgentId = null;
                    }
                    else
                    {
                        cust.AgentId = (int)reader["AgentId"];
                    }
                        
                }
            }
            catch (Exception ex)
            {
                throw ex; // let the form handle it
            }
            finally
            {
                connection.Close(); // close connecto no matter what
            }

            return cust;
        }

        /// <summary>
        /// SQL METHOD GET ALL CUSTOMER (returns ALL rows)
        /// </summary>
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Customer> GetAllCustomers()
        {
            List<Customer> custList = new List<Customer>(); // blank list

            // define connection
            SqlConnection connection = TravelExpertsDB.GetConnection();

            string selectQuery = "SELECT CustomerId, CustFirstName, CustLastName, CustAddress, " +
                "CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, CustBusPhone, " +
                "CustEmail, AgentId, CustUserName, CustPassword " +
                "FROM Customers;";
            SqlCommand selectCommand = new SqlCommand(selectQuery, connection);

            try
            {
                // open the connection
                connection.Open();

                // execute the query
                SqlDataReader reader = selectCommand.ExecuteReader();

                // process the result if any
                while (reader.Read()) // if there is customer
                {
                    Customer cust = new Customer();
                    //create a new customer
                    cust = new Customer();
                    cust.CustomerId = (int)(reader["CustomerId"]);
                    cust.CustFirstName = reader["CustFirstName"].ToString();
                    cust.CustLastName = reader["CustLastName"].ToString();
                    cust.CustAddress = reader["CustAddress"].ToString();
                    cust.CustCity = reader["CustCity"].ToString();
                    cust.CustProv = reader["CustProv"].ToString();
                    cust.CustPostal = reader["CustPostal"].ToString();

                    //**********************************************************
                    //DBNull (sql), null (ASP.NET)
                    //COUNTRY (nulls)
                    if(reader.IsDBNull(reader.GetOrdinal("CustCountry")))
                    {
                        cust.CustCountry = null;
                    }
                    else
                    {
                        cust.CustCountry = reader["CustCountry"].ToString();                     
                    }

                    //HOME PHONE (nulls)
                    if (reader.IsDBNull(reader.GetOrdinal("CustHomePhone")))
                    {
                        cust.CustHomePhone = null;
                    }
                    else
                    {
                        cust.CustHomePhone = reader["CustHomePhone"].ToString();
                    }

                    //AGENTID (nulls)
                    if (reader.IsDBNull(reader.GetOrdinal("AgentId")))
                    {
                        cust.AgentId = null;
                        //string Country = cust.CustCountry = reader["CustCountry"].ToString();
                    }
                    else
                    {
                        cust.AgentId = (int)reader["AgentId"];
                    }
                    //**********************************************************

                    //cust.CustHomePhone = reader["CustHomePhone"].ToString();
                    cust.CustBusPhone = reader["CustBusPhone"].ToString();
                    cust.CustEmail = reader["CustEmail"].ToString();
                    //cust.AgentId = (int)(reader["AgentId"]);
                    cust.CustUserName = reader["CustUserName"].ToString();
                    cust.CustPassword = reader["CustPassword"].ToString();

                    //add to list
                    custList.Add(cust);
                }
            }
            catch (Exception ex)
            {
                throw ex; // let the form handle it
            }
            finally
            {
                connection.Close(); // close connecto no matter what
            }

            return custList;
        }

        /// <summary>
        /// ADD CUSTOMER (sql INSERT INTO)
        /// </summary>
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public static bool AddCustomer(Customer customer)
        {
            bool success = false;   //default to false

            // define connection
            SqlConnection connection = TravelExpertsDB.GetConnection();

            //INSERT INTO Customers(name, prov) VALUES('Mary', 'BC');
            //INSERT QUERY
            string insertQuery = "INSERT INTO Customers " +
                "(" +
                    //"CustomerId, " +      //autoincrement
                    "CustFirstName, " +
                    "CustLastName, " +
                    "CustAddress, " +
                    "CustCity, " +
                    "CustProv, " +
                    "CustPostal, " +
                    "CustCountry, " +
                    "CustHomePhone, " +
                    "CustBusPhone, " +
                    "CustEmail, " +
                    //"AgentId, " +
                    "CustUserName, " +
                    "CustPassword" +
                ") " +
                "VALUES " +
                "(" +
                    //??? need quotes???
                    //"@CustomerId, " +     //autoincrement
                    "@CustFirstName, " +
                    "@CustLastName, " +
                    "@CustAddress, " +
                    "@CustCity, " +
                    "@CustProv, " +
                    "@CustPostal, " +
                    "@CustCountry, " +
                    "@CustHomePhone, " +
                    "@CustBusPhone, " +
                    "@CustEmail, " +
                    //"@AgentId, " +
                    "@CustUserName, " +
                    "@CustPassword" +
                ") ";

            SqlCommand insertCommand = new SqlCommand(insertQuery, connection);
            // parameters
          //  insertCommand.Parameters.AddWithValue("@CustomerId", customer.CustomerId);
            insertCommand.Parameters.AddWithValue("@CustFirstName", customer.CustFirstName);
            insertCommand.Parameters.AddWithValue("@CustLastName", customer.CustLastName);
            insertCommand.Parameters.AddWithValue("@CustAddress", customer.CustAddress);
            insertCommand.Parameters.AddWithValue("@CustCity", customer.CustCity);
            insertCommand.Parameters.AddWithValue("@CustProv", customer.CustProv);
            insertCommand.Parameters.AddWithValue("@CustPostal", customer.CustPostal);
            insertCommand.Parameters.AddWithValue("@CustCountry", customer.CustCountry);
            insertCommand.Parameters.AddWithValue("@CustHomePhone", customer.CustHomePhone);
            insertCommand.Parameters.AddWithValue("@CustBusPhone", customer.CustBusPhone);
            insertCommand.Parameters.AddWithValue("@CustEmail", customer.CustEmail);
            //insertCommand.Parameters.AddWithValue("@AgentId", customer.AgentId);
            insertCommand.Parameters.AddWithValue("@CustUserName", customer.CustUserName);
            insertCommand.Parameters.AddWithValue("@CustPassword", customer.CustPassword);

            try
            {
                //open connection
                connection.Open();

                int count = insertCommand.ExecuteNonQuery();    //execute query (return rows affected)
                if (count == 1)
                {
                    success = true;                             //set return value to (true) if query returns result
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //close connection
                connection.Close();
            }

            return success;
        }


        /// <summary>
        /// UPDATE CUSTOMER (sql UPDATE)
        /// </summary>
        [DataObjectMethod(DataObjectMethodType.Update)]
        public static bool UpdateCustomer(int id, Customer oldCustomer, Customer newCustomer)
        //public static bool UpdateCustomer(int id, Customer newCustomer)
        {
            bool success = false;   //default to false

            // define connection
            SqlConnection connection = TravelExpertsDB.GetConnection();

            //string updateQuery_test = "UPDATE Customers " +
            //    "SET ShippedDate = @NewShippedDate " +
            //    "WHERE (OrderID = " + id + ") " +                           //update only selected record (OrderID=10248)
            //    "AND (ShippedDate = @OldShippedDate " +                     //update only if record hasn't changed
            //    "OR ShippedDate IS NULL AND @OldShippedDate IS NULL);";

            //UPDATE Customers SET CustFirstName = 'Dean',
            //        CustLastName = 'Jones',
            //        CustAddress = '123 Main St',
            //        CustCity = 'Calgary',
            //        CustProv = 'AB',
            //        CustPostal = 'T2B 2J5',
            //        CustCountry = 'Canada',
            //        CustHomePhone = '403-555-5555',
            //        CustBusPhone = '403-555-5556',
            //        CustEmail = 'dean@email.com',
            //        CustUserName = 'dean',
            //        CustPassword = 'pass'
            //    WHERE(CustomerId = 145)
            //    AND(CustCountry = 'Canada' OR CustCountry IS NULL AND 'Canada' IS NULL)
            //    AND(CustHomePhone = '403-555-5555' OR CustHomePhone IS NULL AND '403-555-5555' IS NULL)

            //UPDATE QUERY
            string updateQuery = "UPDATE Customers " +
                "SET " +
                    //"CustomerId = @CustomerId, " +        //autoincrement
                    "CustFirstName = @CustFirstName, " +
                    "CustLastName = @CustLastName, " +
                    "CustAddress = @CustAddress, " +
                    "CustCity = @CustCity, " +
                    "CustProv = @CustProv, " +
                    "CustPostal = @CustPostal, " +
                    "CustCountry = @CustCountry, " +        //null
                    "CustHomePhone = @CustHomePhone, " +    //null
                    "CustBusPhone = @CustBusPhone, " +
                    "CustEmail = @CustEmail, " +
                    //"AgentId = @AgentId, " +              //null
                    "CustUserName = @CustUserName, " +
                    "CustPassword = @CustPassword " +
                "WHERE (CustomerId = @CustomerId);";
                    //"AND (CustCountry = @OldCustCountry OR CustCountry IS NULL AND @OldCustCountry IS NULL) " +
                    //"AND (CustHomePhone = @OldCustHomePhone OR CustHomePhone IS NULL AND @OldCustHomePhone IS NULL);";
                    //"AND (AgentId = @OldAgentId OR AgentId IS NULL AND @OldAgentId IS NULL);";

            SqlCommand updateCommand = new SqlCommand(updateQuery, connection);
            // parameters (new customer)
            updateCommand.Parameters.AddWithValue("@CustomerId", id);
            updateCommand.Parameters.AddWithValue("@CustFirstName", newCustomer.CustFirstName);
            updateCommand.Parameters.AddWithValue("@CustLastName", newCustomer.CustLastName);
            updateCommand.Parameters.AddWithValue("@CustAddress", newCustomer.CustAddress);
            updateCommand.Parameters.AddWithValue("@CustCity", newCustomer.CustCity);
            updateCommand.Parameters.AddWithValue("@CustProv", newCustomer.CustProv);
            updateCommand.Parameters.AddWithValue("@CustPostal", newCustomer.CustPostal);
            updateCommand.Parameters.AddWithValue("@CustCountry", newCustomer.CustCountry ?? (object)DBNull.Value);
            updateCommand.Parameters.AddWithValue("@CustHomePhone", newCustomer.CustHomePhone ?? (object)DBNull.Value);
            updateCommand.Parameters.AddWithValue("@CustBusPhone", newCustomer.CustBusPhone);
            updateCommand.Parameters.AddWithValue("@CustEmail", newCustomer.CustEmail);
            //updateCommand.Parameters.AddWithValue("@AgentId", newCustomer.AgentId);
            updateCommand.Parameters.AddWithValue("@CustUserName", newCustomer.CustUserName);
            updateCommand.Parameters.AddWithValue("@CustPassword", newCustomer.CustPassword);

            // parameters (old customer)
            //updateCommand.Parameters.AddWithValue("@OldCustomerId", id);
            //updateCommand.Parameters.AddWithValue("@OldCustFirstName", oldCustomer.CustFirstName);
            //updateCommand.Parameters.AddWithValue("@OldCustLastName", oldCustomer.CustLastName);
            //updateCommand.Parameters.AddWithValue("@OldCustAddress", oldCustomer.CustAddress);
            //updateCommand.Parameters.AddWithValue("@OldCustCity", oldCustomer.CustCity);
            //updateCommand.Parameters.AddWithValue("@OldCustProv", oldCustomer.CustProv);
            //updateCommand.Parameters.AddWithValue("@OldCustPostal", oldCustomer.CustPostal);
            //updateCommand.Parameters.AddWithValue("@OldCustCountry", oldCustomer.CustCountry ?? (object)DBNull.Value);
            //updateCommand.Parameters.AddWithValue("@OldCustHomePhone", oldCustomer.CustHomePhone ?? (object)DBNull.Value);
            //updateCommand.Parameters.AddWithValue("@OldCustBusPhone", oldCustomer.CustBusPhone);
            //updateCommand.Parameters.AddWithValue("@OldCustEmail", oldCustomer.CustEmail);
            //updateCommand.Parameters.AddWithValue("@AgentId", newCustomer.AgentId);
            //updateCommand.Parameters.AddWithValue("@OldCustUserName", oldCustomer.CustUserName);
            //updateCommand.Parameters.AddWithValue("@OldCustPassword", oldCustomer.CustPassword);
            //parameters (or null)
            //updateCommand.Parameters.AddWithValue("@OldCustCountry", oldCustomer.CustCountry ?? (object)DBNull.Value);
            //updateCommand.Parameters.AddWithValue("@OldCustHomePhone", oldCustomer.CustHomePhone ?? (object)DBNull.Value);
            //updateCommand.Parameters.AddWithValue("@OldAgentId", oldCustomer.AgentId ?? (object)DBNull.Value);

            try
            {
                //open connection
                connection.Open();

                int count = updateCommand.ExecuteNonQuery();    //execute query (return rows affected)
                if (count == 1)
                {
                    success = true;                             //set return value to (true) if query returns result
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //close connection
                connection.Close();
            }

            return success;
        }

        /// <summary>
        /// UPDATE 2
        /// </summary>
        //public static bool Update2(int id, Customer oldCustomer, Customer newCustomer)
        //{
        //    bool success = false;   //default to false

        //    // define connection
        //    SqlConnection conn = TravelExpertsDB.GetConnection();
        //    using (conn)
        //    {
        //        conn.Open();

        //        SqlCommand cmd = conn.CreateCommand();
        //        SqlTransaction transaction;

        //        //sql query to EDIT ROW
        //        //string sqlUpdate = "UPDATE Suppliers SET SupName='" + myUpdate + "' WHERE SupplierId=" + id +    //"; DROP TABLE Suppliers;       
        //        string sqlUpdate = "UPDATE Suppliers " +
        //            "SET SupName = @MyNewUpdate " +
        //            //"WHERE (SupplierId = " + id + ") " +                          //*** need parameter for 'id' as using a textbox...                    
        //            "WHERE (SupplierId = @id) " +                                   //update only selected record (SupplierId=#)
        //            "AND (SupName = @MyOldUpdate " +                                //update only if record hasn't changed
        //            "OR SupName IS NULL AND @MyOldUpdate IS NULL);";
        //        //parameters
        //        var x = cmd.Parameters.AddWithValue("@MyOldUpdate", myOldUpdate ?? (object)DBNull.Value);
        //        var y = cmd.Parameters.AddWithValue("@MyNewUpdate", myNewUpdate ?? (object)DBNull.Value);
        //        var z = cmd.Parameters.AddWithValue("@id", id); //supplier id  (not null)

        //        //start a local transaction
        //        transaction = conn.BeginTransaction("UpdateCustomer");

        //        //assign both CONNECTION and TRANSACTION to cmd object for a local transaction?
        //        cmd.Connection = conn;
        //        cmd.Transaction = transaction;

        //        try
        //        {
        //            //run query
        //            cmd.CommandText = sqlUpdate;            //SQL query
        //            cmd.ExecuteNonQuery();                  //Execute query

        //            //attempt to COMMIT the transaction
        //            transaction.Commit();
        //            //MessageBox.Show("The supplier was UPDATED in the database successfully!", "DATABASE ENTRY UPDATED");
        //        }
        //        catch (Exception ex)
        //        {
        //            throw ex;
        //            //MessageBox.Show("There was trouble updating a supplier in the database...\n\n" + ex.GetType() + ": " + ex.Message, "UPDATE SUPPLIER EXCEPTION");

        //            //attempt ROLLBACK
        //            try
        //            {
        //                transaction.Rollback();
        //            }
        //            catch (Exception ex2)
        //            {
        //                //MessageBox.Show("There was trouble ROLLBACKing the database...\n\n" + ex2.GetType() + ": " + ex2.Message, "ROLLBACK DATABASE EXCEPTION");
        //                throw ex2;
        //            }
        //        }

        //        return success;
        //    }
        //}

        /// <summary>
        /// TEST FOR UNIQUE USERNAME AND PASSWORD (before using ADD CUSTOMER)
        /// </summary>
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static bool TestUniqueUserPassword(string username, string password)
        {
            bool success = false;   // test if TEST was succussful

            // define connection
            SqlConnection connection = TravelExpertsDB.GetConnection();

            //SELECT COUNT(CustomerId) FROM Customers WHERE CustUserName='abc1' AND CustPassword='pw';
            string selectQuery = "SELECT COUNT(CustomerId) FROM Customers WHERE CustUserName=@CustUserName AND CustPassword=@CustPassword";
            SqlCommand selectCommand = new SqlCommand(selectQuery, connection);
            // parameters
            selectCommand.Parameters.AddWithValue("@CustUserName", username);
            selectCommand.Parameters.AddWithValue("@CustPassword", password);

            try
            {
                //open connection
                connection.Open();

                //**********************************************
                //**********************************************
                int count = Convert.ToInt32(selectCommand.ExecuteScalar());
                if (count == 0)
                {
                    success = true;                             //set return value to (true) if query returns result
                }
                //**********************************************
                //**********************************************
            }
            catch (Exception ex)
            {
                throw ex; // let the form handle it
            }
            finally
            {
                connection.Close(); // close connecto no matter what
            }

            return success;
        }

        /// <summary>
        /// CUSTOMER LOGIN CONFIRMATION
        /// </summary>
        //public static Customer ConfirmCustLogin(string custUserName, string custPassword)
        //{
        //    bool success = false;   // test if login was succussful

        //    Customer cust = null;   // new customer object

        //    // define connection
        //    SqlConnection connection = TravelExpertsDB.GetConnection();

        //    //SELECT * FROM Customers WHERE CustUserName = 'dean' AND CustPassword = 'dean';
        //    string selectQuery = "SELECT * FROM Customers WHERE CustUserName = @CustUserName AND CustPassword = @CustPassword;";
        //    SqlCommand selectCommand = new SqlCommand(selectQuery, connection);
        //    // parameters
        //    selectCommand.Parameters.AddWithValue("@CustUserName", custUserName);
        //    selectCommand.Parameters.AddWithValue("@CustPassword", custPassword);

        //    try
        //    {
        //        // open the connection
        //        connection.Open();

        //        // execute the query
        //        SqlDataReader reader = selectCommand.ExecuteReader(CommandBehavior.SingleRow);

        //        // process the result if any
        //        if (reader.Read()) // if there is technician
        //        {
        //            //create a new customer
        //            cust = new Customer();
        //            cust.CustomerId = (int)(reader["CustomerId"]);
        //            cust.CustFirstName = reader["CustFirstName"].ToString();
        //            cust.CustLastName = reader["CustLastName"].ToString();
        //            cust.CustAddress = reader["CustAddress"].ToString();
        //            cust.CustCity = reader["CustCity"].ToString();
        //            cust.CustProv = reader["CustProv"].ToString();
        //            cust.CustPostal = reader["CustPostal"].ToString();
        //            cust.CustCountry = reader["CustCountry"].ToString();
        //            cust.CustHomePhone = reader["CustHomePhone"].ToString();
        //            cust.CustBusPhone = reader["CustBusPhone"].ToString();
        //            cust.CustEmail = reader["CustEmail"].ToString();
        //            cust.AgentId = (int)(reader["AgentId"]);
        //            cust.CustUserName = reader["CustUserName"].ToString();
        //            cust.CustPassword = reader["CustPassword"].ToString();

        //            //is success
        //            success = true;
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex; // let the form handle it
        //    }
        //    finally
        //    {
        //        connection.Close(); // close connecto no matter what
        //    }

        //    return cust;
        //}

        /// <summary>
        /// RETURN (CustomerId) from USERNAME AND PASSWORD ONLY
        /// </summary>
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static int GetCustomerId(string username, string password)
        {
            //customer id
            int custId = -1;

            // define connection
            SqlConnection connection = TravelExpertsDB.GetConnection();

            //SELECT CustomerId FROM Customers WHERE CustUserName='dean' AND CustPassword='pass';
            string selectQuery = "SELECT CustomerId FROM Customers WHERE CustUserName=@CustUserName AND CustPassword=@CustPassword";
            SqlCommand selectCommand = new SqlCommand(selectQuery, connection);
            // parameters
            selectCommand.Parameters.AddWithValue("@CustUserName", username);
            selectCommand.Parameters.AddWithValue("@CustPassword", password);

            try
            {
                // open the connection
                connection.Open();

                // execute the query
                SqlDataReader reader = selectCommand.ExecuteReader(CommandBehavior.SingleResult);

                // process the result if any
                if (reader.Read()) // if there is technician
                {
                    //read customer id
                    custId = (int)(reader["CustomerId"]);
                    return custId;
                }
            }
            catch (Exception ex)
            {
                throw ex; // let the form handle it
            }
            finally
            {
                connection.Close(); // close connecto no matter what
            }

            return custId;
        }
    }
}