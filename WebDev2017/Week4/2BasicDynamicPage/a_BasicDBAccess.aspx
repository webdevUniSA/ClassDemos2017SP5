<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="a_BasicDBAccess.aspx.cs" Inherits="WebDev2017.Week4.BasicDynamicPage.a_BasicDBAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMainContent" runat="server">
    <h1>Basic Database Access</h1>

    <label>Search:
        <input type="text" name="firstName" placeholder="Enter name to search. . ." /></label>
    <input type="submit" value="Run Query" />
    <hr />

    <%= html %>


    <script runat="server">
        //c#
        //1. Connection to DB
        //2. A Query
        //3. Execute the query
        //4. publish the results

        public string html = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var dbConString = ConfigurationManager.ConnectionStrings["CustomerDB"].ConnectionString;
                var con = new System.Data.SqlClient.SqlConnection(dbConString);

                string sql = "SELECT * FROM Customers";
                sql = "SELECT * FROM Customers WHERE firstName LIKE @firstName +'%'";

                var cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandText = sql;
                cmd.Connection = con;

                // If including Parameters
                System.Data.SqlClient.SqlParameter p1 = new System.Data.SqlClient.SqlParameter();
                p1.ParameterName = "firstName";
                p1.Direction = System.Data.ParameterDirection.Input;
                p1.Value = Request.Form["firstName"]; // must not be empty
                p1.Size = 100;

                // don't forget to add parameter to query
                cmd.Parameters.Add(p1);

                // open the con and run the query
                con.Open();

                var r = cmd.ExecuteReader();
                int count = 0;
                if (r.HasRows)
                {
                    while (r.Read())
                    {
                        if (count == 0)
                        {
                            html += "<table><tr><th>CustomerID</th><th>Customer Name</th></tr>" + Environment.NewLine;
                        }
                        html += "<tr><td>" + r["customerID"] + "</td><td>" + r["firstName"] + " " + r["lastName"] + "</td></tr>";
                        count++;
                    }
                    html += "</table>";
                }
            }
        }
    </script>
</asp:Content>
