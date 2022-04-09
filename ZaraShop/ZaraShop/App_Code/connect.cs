using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ZaraShop.App_Code
{
    public class connect
    {
        public static string StrConn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].ConnectionString.ToString();
        public static DataTable Docbang(string LenhSQL)
        {
            using (SqlConnection conn = new SqlConnection(StrConn))
            {
                SqlDataAdapter bodocghi = new SqlDataAdapter(LenhSQL, conn);
                DataTable bang = new DataTable();
                bodocghi.Fill(bang);
                return bang;
            }
        }
        public static void thuchienlenh(string LenhSQL)
        {
            using (SqlConnection conn = new SqlConnection(StrConn))
            {
                conn.Open();
                SqlCommand bolenh = new SqlCommand(LenhSQL, conn);
                bolenh.ExecuteNonQuery();
                conn.Close();
            }
        }
        public static String Getdata(String LenhSQL)
        {
            using (SqlConnection conn = new SqlConnection(StrConn))
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = LenhSQL;
                string result = "" + cmd.ExecuteScalar().ToString();
                conn.Close();
                return result;
            }
        }
    }
}