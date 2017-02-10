using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TECart.App_Code
{
    public static class PackageDB
    {
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

    }
}