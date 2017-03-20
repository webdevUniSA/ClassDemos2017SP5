using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebDev2017.Week4.BasicDynamicPage
{
    public partial class b_AutomatedTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var dbConString = ConfigurationManager.ConnectionStrings["CustomerDB"].ConnectionString;
                var con = new SqlConnection(dbConString);

                string sql = "SELECT * FROM Customers";
                sql = "SELECT * FROM Customers WHERE firstName LIKE @firstName +'%'";

                var cmd = new SqlCommand();
                cmd.CommandText = sql;
                cmd.Connection = con;

                // If including Parameters
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "firstName";
                p1.Direction = System.Data.ParameterDirection.Input;
                p1.Value = Request.Form["firstName"]; // must not be empty
                p1.Size = 100;

                // don't forget to add parameter to query
                cmd.Parameters.Add(p1);

                // open the con and run the query
                con.Open();

                var r = cmd.ExecuteReader();
                if (r.HasRows)
                {
                    GVCustomers.DataSource = r;
                    GVCustomers.DataBind();
                }
            }
        }
    }
}