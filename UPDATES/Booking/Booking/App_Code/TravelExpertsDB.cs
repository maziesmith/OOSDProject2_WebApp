using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace Booking
{
    internal class TravelExpertsDB
    {
        enum ALPHABET { A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z };
        public static string MakeBooking(List<Package> ps, Customer c)
        {
            string rtn = "";
            try
            {
                using (SqlConnection conn = GetConnection())
                {
                    conn.Open();
                    SqlTransaction transaction = conn.BeginTransaction();
                    for (int i = 0; i < ps.Count; i++)
                    {
                        string BookingNo = GenerateBookingNumber();
                        using (SqlCommand cmd = new SqlCommand("SELECT BookingNo FROM Bookings", conn))
                        {
                            cmd.Transaction = transaction;
                            SortedList<string, string> BookingNos = new SortedList<string, string>();

                            using (SqlDataReader rd = cmd.ExecuteReader())
                            {
                                while (rd.Read())
                                {
                                    BookingNos.Add(rd["BookingNo"].ToString(), "");
                                }
                            }

                            bool getBookingNo = true;

                            while (getBookingNo)
                            {
                                if (BookingNos.IndexOfKey(BookingNo) == -1)
                                {
                                    getBookingNo = false;
                                }
                                else
                                {
                                    BookingNo = GenerateBookingNumber();
                                }
                            }
                        }

                        SqlCommand cmdinsert = new SqlCommand("INSERT INTO Bookings (BookingDate,BookingNo,TravelerCount,CustomerId,TripTypeId,PackageId) VALUES (@bookingdate_" + i + ",@bookingno_" + i + ",@travelercount_" + i + ",@customerid_" + i + ",@triptypeid_" + i + ",@packageid_" + i + ")", conn);
                        cmdinsert.Transaction = transaction;
                        cmdinsert.Parameters.AddWithValue("@bookingdate_" + i + "", DateTime.Today);
                        cmdinsert.Parameters.AddWithValue("@bookingno_" + i + "", BookingNo);
                        cmdinsert.Parameters.AddWithValue("@travelercount_" + i + "", 2);
                        cmdinsert.Parameters.AddWithValue("customerid_" + i + "", c.CustomerId);
                        cmdinsert.Parameters.AddWithValue("@triptypeid_" + i + "", "L");
                        cmdinsert.Parameters.AddWithValue("@packageid_" + i + "", ps[i].PackageId);
                        if (cmdinsert.ExecuteNonQuery() != 1)
                        {
                            rtn += "Error inserting into database\n";
                        }
                    }
                    transaction.Commit();
                    conn.Close();
                }
            }
            catch (Exception ex) { throw ex; }
            return rtn;
        }
        private static string GenerateBookingNumber()
        {
            string bn = "";
            Random r = new Random();
            for (int i = 0; i < 4; i++)
            {
                int num = r.Next(0, 25);
                bn += (ALPHABET)num;
            }
            bn += "-";
            for (int i = 0; i < 4; i++)
            {
                int num = r.Next(0, 9);
                bn += num;
            }
            return bn;
        }
        public static Package GetPackage(int pkgid)
        {
            Package p = new Package();
            try
            {
                using (SqlConnection conn = GetConnection())
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT PackageId,PkgName,PkgStartDate,"+
                        "PkgEndDate,PkgDesc,PkgBasePrice,PkgAgencyCommission FROM Packages "+
                        "WHERE PackageId=@packageid", conn);
                    cmd.Parameters.AddWithValue("@packageid", pkgid);
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        if (rd.Read())
                        {
                            p.PackageId = (int)rd["PackageId"];
                            p.PkgName = rd["PkgName"].ToString();
                            p.PkgStartDate = (DateTime)rd["PkgStartDate"];
                            p.PkgEndDate = (DateTime)rd["PkgEndDate"];
                            p.PkgDesc = rd["PkgDesc"].ToString();
                            p.PkgBasePrice = (decimal)rd["PkgBasePrice"];
                            p.PkgAgencyCommission = (decimal)rd["PkgAgencyCommission"];

                            using (SqlConnection conn2 = GetConnection())
                            {
                                conn2.Open();
                                SqlCommand cmd2 = new SqlCommand("SELECT pr.ProductId," +
                            "pr.ProdName,su.SupplierId,su.SupName FROM Packages pa " +
                            "INNER JOIN Packages_Products_Suppliers pps " +
                            "ON pps.PackageId=pa.PackageId " +
                            "INNER JOIN Products_Suppliers ps " +
                            "ON ps.ProductSupplierId=pps.ProductSupplierId " +
                            "INNER JOIN Products pr " +
                            "ON pr.ProductId=ps.ProductId " +
                            "INNER JOIN Suppliers su " +
                            "ON su.SupplierId=ps.SupplierId " +
                            "WHERE pa.PackageId=@packageid2", conn2);
                                cmd2.Parameters.AddWithValue("@packageid2", pkgid);
                                using (SqlDataReader rd2 = cmd2.ExecuteReader())
                                {
                                    while (rd2.Read())
                                    {
                                        Product pr = new Product();
                                        pr.ProductId = (int)rd2["ProductId"];
                                        pr.ProdName = rd2["ProdName"].ToString();
                                        pr.Supplier.SupplierId = (int)rd2["SupplierId"];
                                        pr.Supplier.SupName = rd2["SupName"].ToString();
                                        p.Products.Add(pr);
                                    }
                                }
                                conn2.Close();
                            }
                        }
                    }
                        conn.Close();
                }
            }
            catch(Exception ex) { throw ex; }
            return p;
        }
        public static Customer GetCustomer(int id)
        {
            Customer c = new Customer();
            try
            {
                using (SqlConnection conn = GetConnection())
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT CustFirstName,CustLastName,CustAddress,CustCity,CustProv,CustPostal,CustCountry,CustHomePhone,CustBusPhone,CustEmail,AgentId FROM Customers WHERE CustomerId=@customerid", conn);
                    cmd.Parameters.AddWithValue("@customerid", id);
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        while (rd.Read())
                        {
                            c.CustomerId = id;
                            c.CustFirstName = rd["CustFirstName"].ToString();
                            c.CustLastName = rd["CustLastName"].ToString();
                            c.CustAddress = rd["CustAddress"].ToString();
                            c.CustCity = rd["CustCity"].ToString();
                            c.CustProv = rd["CustProv"].ToString();
                            c.CustPostal = rd["CustPostal"].ToString();
                            c.CustCountry = rd["CustCountry"].ToString();
                            c.CustHomePhone = rd["CustHomePhone"].ToString();
                            c.CustBusPhone = rd["CustBusPhone"].ToString();
                            c.CustEmail = rd["CustEmail"].ToString();
                            try { c.AgentId = (int)rd["AgentId"]; }
                            catch { c.AgentId = null; }
                        }
                    }
                    conn.Close();
                }
            }
            catch { }
            return c;
        }
        public static List<Product> GetPackageProducts(int pkgid)
        {
            List<Product> products = new List<Product>();
            using (SqlConnection conn = GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT pr.ProductId,pr.ProdName,su.SupplierId,su.SupName FROM Packages_Products_Suppliers pps " +
                    "INNER JOIN Products_Suppliers ps ON pps.ProductSupplierId=ps.ProductSupplierId " +
                    "INNER JOIN Products pr ON pr.ProductId=ps.ProductId " +
                    "INNER JOIN Suppliers su ON su.SupplierId=ps.SupplierId " +
                    "WHERE pps.PackageId=@packageid", conn);
                cmd.Parameters.AddWithValue("@packageid", pkgid);
                using (SqlDataReader rd = cmd.ExecuteReader()) {
                    while (rd.Read())
                    {
                        Product p = new Product();
                        p.ProductId = (int)rd["ProductId"];
                        p.ProdName = rd["ProdName"].ToString();
                        p.Supplier.SupplierId = (int)rd["SupplierId"];
                        p.Supplier.SupName = rd["SupName"].ToString();
                        products.Add(p);
                    }
                }
                    conn.Close();
            }
                return products;
        }
        public static SqlConnection GetConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["travelexpertsCONNSTR"].ConnectionString);
        }
    }
}
