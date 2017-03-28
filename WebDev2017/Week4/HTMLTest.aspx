<%@ Page Title="HTML Test" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HTMLTest.aspx.cs" Inherits="WebDev2017.Week4.HTMLTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
       Search: <input type="text" name="firstName" placeholder="First Name Search. . . " />
    <asp:TextBox runat="server" ID="TBFirstName" placeholder="First Name Search..."></asp:TextBox><br />
     <input type="submit" value="Post Back Page" />

   <asp:GridView runat="server" ID="GVCustomers" AutoGenerateColumns="true" DataSourceID="SDSCustomers">
       <Columns>
           <asp:BoundField DataField="customerID" HeaderText="customer ID" />
           <asp:TemplateField>
               <ItemTemplate>
                   <%# Eval("customerID") %>
               </ItemTemplate>
               <HeaderTemplate>
                   Eval CustomerID
               </HeaderTemplate>
           </asp:TemplateField>
       </Columns>

   </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SDSCustomers"
        ConnectionString='<%$ ConnectionStrings:CustomerDBConnectionString %>'
        SelectCommand="SELECT TOP 5 * FROM Customers WHERE firstName LIKE @firstName + '%'"
        >
        <SelectParameters>
            <asp:FormParameter Name="firstName" FormField="firstName" DefaultValue="a" />
        </SelectParameters>
    </asp:SqlDataSource>
    <script runat="server">
        public string html = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string db = ConfigurationManager.ConnectionStrings["CustomerDB"].ConnectionString;

            if (IsPostBack)
            {
                var con = new System.Data.SqlClient.SqlConnection(db);
                var cmd = new System.Data.SqlClient.SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT TOP 5 * FROM Customers WHERE firstName LIKE @firstName + '%'";
                cmd.CommandType = System.Data.CommandType.Text; // or stored proc.

                var p1 = new System.Data.SqlClient.SqlParameter();
                p1.ParameterName = "firstName";
                p1.Size = 100;
                p1.Direction = System.Data.ParameterDirection.Input;
                p1.Value = TBFirstName.Text; // Request.Form["firstName"];
                cmd.Parameters.Add(p1);

                con.Open();
                var reader = cmd.ExecuteReader();
                if(reader.HasRows)
                {
                    GVCustomers.DataSource = reader;
                    //html += "<table><tr><th>Customer ID</th><th>Name</th></tr>";
                    //while (reader.Read())
                    //{
                    //    html += "<tr><td>" + reader["customerID"] + "</td><td>" + reader["firstName"] + " " + reader["lastName"] + "</td></td>";
                    //}
                    //html += "</table>";
                }

                Page.DataBind();
            }
        }
    </script>
</asp:Content>
