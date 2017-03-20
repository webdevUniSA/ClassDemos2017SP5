<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataValues.aspx.cs" Inherits="WebDev2017.Week4.DataValues" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMainContent" runat="server">

    <%:  html1 %><br />
    <%= html1 %><br />
    <%#  html + (1 + 2) %>
    <input type="text" name="firstName" placeholder="Search for..." value="a" />
    <button type="submit" value="Save">Save</button>

    <asp:GridView runat="server" ID="GVCustomers" AutoGenerateColumns="False" DataSourceID="SDSCustomers">
        <Columns>
            <asp:BoundField DataField="customerID" HeaderText="CustomerID" />
            <asp:BoundField DataField="firstName"  HeaderText="FirstName"/>
<asp:TemplateField>
    <ItemTemplate>
        <%# Eval("firstName") + " " + Eval("lastName") %>
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("lastName") %>'></asp:Label>
    </ItemTemplate>
    <HeaderTemplate>Customer NAme</HeaderTemplate>
</asp:TemplateField>
            <asp:BoundField DataField="mainPhoneNo" HeaderText="mainPhoneNo" SortExpression="mainPhoneNo" />
            <asp:TemplateField HeaderText="secondaryPhoneNo" SortExpression="secondaryPhoneNo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("secondaryPhoneNo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("secondaryPhoneNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SDSCustomers" 
        ConnectionString='<%$ ConnectionStrings:CustomerDBConnectionString %>'
        SelectCommand="SELECT * FROM [Customers] WHERE ([firstName] = @firstName)" DeleteCommand="DELETE FROM [Customers] WHERE [customerID] = @customerID" InsertCommand="INSERT INTO [Customers] ([firstName], [lastName], [mainPhoneNo], [secondaryPhoneNo], [email], [addressLine1], [addressLine2], [isp]) VALUES (@firstName, @lastName, @mainPhoneNo, @secondaryPhoneNo, @email, @addressLine1, @addressLine2, @isp)" UpdateCommand="UPDATE [Customers] SET [firstName] = @firstName, [lastName] = @lastName, [mainPhoneNo] = @mainPhoneNo, [secondaryPhoneNo] = @secondaryPhoneNo, [email] = @email, [addressLine1] = @addressLine1, [addressLine2] = @addressLine2, [isp] = @isp WHERE [customerID] = @customerID" OnSelected="SDSCustomers_Selected"
        >
        <DeleteParameters>
            <asp:Parameter Name="customerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="mainPhoneNo" Type="String" />
            <asp:Parameter Name="secondaryPhoneNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="addressLine1" Type="String" />
            <asp:Parameter Name="addressLine2" Type="String" />
            <asp:Parameter Name="isp" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:FormParameter Name="firstName" FormField="firstName" Type="String" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="mainPhoneNo" Type="String" />
            <asp:Parameter Name="secondaryPhoneNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="addressLine1" Type="String" />
            <asp:Parameter Name="addressLine2" Type="String" />
            <asp:Parameter Name="isp" Type="String" />
            <asp:Parameter Name="customerID" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>
    <script runat="server">

        public string html = "Test This";
        public string html1 ="";
        protected void Page_Load(object sender, EventArgs e)
        {
            // 1 server name
            // 2 open connection
            // 3 run query
            // 4 display query
            if (IsPostBack)
            {
                
                SDSCustomers.DataBind();
                GVCustomers.DataBind();
                /*
                string db = ConfigurationManager.ConnectionStrings["CustomerDB"].ConnectionString;

                var con = new System.Data.SqlClient.SqlConnection(db);
                con.Open();

                string sql = "SELECT TOP 5 * FROM Customers WHERE firstName LIKE @firstName + '%'";

                var cmd = new System.Data.SqlClient.SqlCommand(sql, con);

                var p1 = new System.Data.SqlClient.SqlParameter();
                p1.ParameterName = "firstName";
                p1.Size = 100;
                p1.Direction = System.Data.ParameterDirection.Input;
                p1.Value = Request.Form["firstName"];
                cmd.Parameters.Add(p1);

                var reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    //html = "<table><tr><th>Customer ID</th><th>Name</th></tr>";
                    //while (reader.Read())
                    //{
                    //    html += "<tr><td>" + reader["customerID"] + "</td><td>" + reader["firstName"] + " " + reader["lastName"] + "</td></td>";
                    //}
                    //html += "</table>";
                    GVCustomers.DataSource = reader;
                }
              //  con.Close();
                Page.DataBind();
                con.Close();
                */
            }

            //if (IsPostBack) { }
            //else // 1st Page Load
            //{
            //    html1 = "<span>Test</span>";
            //    Page.DataBind();
            //}
        }

    </script>
</asp:Content>
