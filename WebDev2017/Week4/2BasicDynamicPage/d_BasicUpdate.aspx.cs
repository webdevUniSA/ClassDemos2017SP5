using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebDev2017.Week4.d_BasicDynamicPage
{
    public partial class BasicUpdate : System.Web.UI.Page
    {
        public string customerID = "";
        public string firstName = "";
        public string lastName = "";



        protected void Page_Load(object sender, EventArgs e)
        {
            customerID = Request.QueryString["record"];

            if (!IsPostBack && !string.IsNullOrEmpty(customerID))
            {

                var dbConString = ConfigurationManager.ConnectionStrings["CustomerDB"].ConnectionString;
                var con = new SqlConnection(dbConString);

                string sql = "SELECT * FROM Customers WHERE customerID = @customerID";

                var cmd = new SqlCommand();
                cmd.CommandText = sql;
                cmd.Connection = con;

                // If including Parameters
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "customerID";
                p1.Direction = System.Data.ParameterDirection.Input;
                p1.Value = customerID; // must not be empty
                                                          // p1.DbType = System.Data.DbType.Int32;
                p1.SqlDbType = System.Data.SqlDbType.Int;

                // don't forget to add parameter to query
                cmd.Parameters.Add(p1);

                // open the con and run the query
                con.Open();

                var r = cmd.ExecuteReader();

                if (r.Read())
                {
                    firstName = r["firstName"] + "";
                    lastName = r["lastName"] + "";
                }
            }
            else if(IsPostBack)
            {
                var dbConString = ConfigurationManager.ConnectionStrings["CustomerDB"].ConnectionString;
                var con = new SqlConnection(dbConString);

                string sql = "UPDATE Customers SET firstName = @firstName, lastName = @lastName WHERE customerID = @customerID";

                var cmd = new SqlCommand();
                cmd.CommandText = sql;
                cmd.Connection = con;

                // If including Parameters
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "firstName";
                p1.Direction = System.Data.ParameterDirection.Input;
                p1.Value = Request.Form["firstName"]; // must not be empty
                p1.Size = 100;

                // If including Parameters
                SqlParameter p2 = new SqlParameter();
                p2.ParameterName = "lastName";
                p2.Direction = System.Data.ParameterDirection.Input;
                p2.Value = Request.Form["lastName"]; // must not be empty
                p2.Size = 100;

                // If including Parameters
                SqlParameter p3 = new SqlParameter();
                p3.ParameterName = "customerID";
                p3.Direction = System.Data.ParameterDirection.Input;
                p3.Value = customerID; // must not be empty
                p3.SqlDbType = System.Data.SqlDbType.Int;
                // don't forget to add parameter to query
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);

                // open the con and run the query
                con.Open();

                var r = cmd.ExecuteNonQuery();
            }
        }
    }
}