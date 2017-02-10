using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using ProductionProjectWebsite.Account;
using System.ComponentModel;

namespace ProductionProjectWebsite.Account
{
    //**************************************
    // PACKAGE DATABASE CLASS
    // Kassy
    //**************************************
    [DataObject(true)]
    public static class PackageDB
    {
        //GET A PACKAGE
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Package> GetPackage()
        {
            List<Package> Package = new List<Package>();

            // connect to database
            SqlConnection connection = TravelExpertsDB.GetConnection();

            // get selectString
            string selectString = "Select PackageId, PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice from Packages " +
                                  "order by PkgName";
            SqlCommand selectCommand = new SqlCommand(selectString, connection);

            try
            {
                connection.Open();

                SqlDataReader reader = selectCommand.ExecuteReader();

                while (reader.Read())
                {
                    Package package = new Package();
                    package.PackageId = (int)reader["PackageId"];
                    package.PkgName = reader["PkgName"].ToString();
                    package.PkgStartDate = (DateTime)reader["PkgStartDate"];
                    package.PkgEndDate = (DateTime)reader["PkgEndDate"];
                    package.PkgDesc = reader["PkgDesc"].ToString();
                    package.PkgBasePrice = (decimal)reader["PkgBasePrice"];

                    Package.Add(package);
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
            return Package;

        }

        //GET ONE PACKAGE (Dean and Kassy)
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static Package GetOnePackage(int packagId)
        {
            Package package = new Package();    //new package

            // connect to database
            SqlConnection connection = TravelExpertsDB.GetConnection();

            // get selectString
            string selectString = "Select PackageId, PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice from Packages " +
                                    "where PackageId = @PackageId " +
                                    "order by PkgName";

            SqlCommand selectCommand = new SqlCommand(selectString, connection);
            selectCommand.Parameters.AddWithValue("@PackageId", packagId);

            try
            {
                connection.Open();

                SqlDataReader reader = selectCommand.ExecuteReader();

                if (reader.Read())
                {                   
                    package.PackageId = (int)reader["PackageId"];
                    package.PkgName = reader["PkgName"].ToString();
                    package.PkgStartDate = (DateTime)reader["PkgStartDate"];
                    package.PkgEndDate = (DateTime)reader["PkgEndDate"];
                    package.PkgDesc = reader["PkgDesc"].ToString();
                    package.PkgBasePrice = (decimal)reader["PkgBasePrice"];

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
            return package;

        }

        //GET PACKAGE DETAILS
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Package> GetPackageDetails(int packageid)
        {
            List<Package> packagedetails = new List<Package>();

            // connect to database
            SqlConnection connection = TravelExpertsDB.GetConnection();

            // get selectString
            string selectString = "Select PackageId, PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice from Packages " +
                                  "where PackageId = @PackageId " +
                                  "order by PkgName";

            SqlCommand selectCommand = new SqlCommand(selectString, connection);
            selectCommand.Parameters.AddWithValue("@PackageId", packageid);

            try
            {
                connection.Open();

                SqlDataReader reader = selectCommand.ExecuteReader();

                while (reader.Read())
                {
                    Package pkg = new Package();
                    pkg.PackageId = (int)reader["PackageId"];
                    pkg.PkgName = reader["PkgName"].ToString();
                    pkg.PkgStartDate = (DateTime)reader["PkgStartDate"];
                    pkg.PkgEndDate = (DateTime)reader["PkgEndDate"];
                    pkg.PkgDesc = reader["PkgDesc"].ToString();
                    pkg.PkgBasePrice = (decimal)reader["PkgBasePrice"];
                    packagedetails.Add(pkg);
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
            return packagedetails;

        }

        //GET PACKAGE ID's (by CustomerId)(Dean Jones, Jan.23)
        //(return a list of PackageId's)
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<int> GetPackageIDs(int custId)
        {
            List<int> packageIDs = new List<int>();

            // connect to database
            SqlConnection connection = TravelExpertsDB.GetConnection();

            // get selectString
            //SELECT PackageId FROM Bookings WHERE CustomerId = 161;
            string selectString = "SELECT PackageId FROM Bookings WHERE CustomerId = @CustomerId;";
            SqlCommand selectCommand = new SqlCommand(selectString, connection);
            selectCommand.Parameters.AddWithValue("@CustomerId", custId);

            try
            {
                connection.Open();

                SqlDataReader reader = selectCommand.ExecuteReader();

                while (reader.Read())
                {
                    packageIDs.Add((int)reader["PackageId"]);   //add all ordered packages (booked)
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
            return packageIDs;

        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Package> GetCustomerPackages(Customer c)
        {
            List<Package> ps = new List<Package>();
            try
            {
                using (SqlConnection conn = TravelExpertsDB.GetConnection())
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT pa.PackageId,pa.PkgName,pa.PkgDesc FROM Packages pa " +
                        "INNER JOIN Bookings b " +
                        "ON b.PackageId=pa.PackageId " +
                        "WHERE b.CustomerId=@customerid", conn);
                    cmd.Parameters.AddWithValue("@customerid", c.CustomerId);
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        while (rd.Read())
                        {
                            Package p = new Package();
                            p.PackageId = (int)rd["PackageId"];
                            p.PkgName = rd["PkgName"].ToString();
                            p.PkgDesc = rd["PkgDesc"].ToString();
                            ps.Add(p);
                        }
                    }
                        conn.Close();
                }
            }
            catch(Exception ex) { throw ex; }
            return ps;
        }
    }
}