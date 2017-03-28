<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="e_SqlDataSourceParameters.aspx.cs" Inherits="WebDev2017.Week4.BasicDynamicPage.e_SqlDataSourceParameters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <h1>SqlDataSource Demo Page</h1>
    <p>This page shows various ways to pass values from a HTML Form to an SqlDataSource without the need to write any C# code.
        <br />To see the different methods you will need to look at the SelectCommand property of each SqlDataSource in the Properties window.
        <br />Also note that because each SqlDataSource uses a different parameter source, each example works independently of the next!
    </p>

    <h2>Form Element</h2>
    <p>This example shows how to set up the SqlDataSource to read from a traditional HTML input element (textbox, hidden, textarea, radiobutton etc)</p>
    <p>It relies on the &quot;name&quot; attribute of the input element.&nbsp; The SqlDataSource parameter is set to get the &quot;name&quot; field from the html Form.</p>
    <input type="text" placeholder="html textbox" name="TBFirstName" />
    <button type="submit">Search</button>
    <asp:SqlDataSource ID="SDSHtmlInputCustomers"
        runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>"
        SelectCommand="SELECT TOP 5 customerID, firstName, lastName FROM Customers WHERE (firstName LIKE @search + '%') OR (@search IS NULL)" CancelSelectOnNullParameter="False" ProviderName="<%$ ConnectionStrings:CustomerDBConnectionString.ProviderName %>">
        <SelectParameters>
            <asp:FormParameter FormField="TBFirstName" Name="search" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SDSHtmlInputCustomers">
    </asp:GridView>



    <h2>ASP.net TextBox</h2>
    <p>This example shows how to set up the SqlDataSource to read from an ASP.NET Server Control - it uses the ID property instead of the &quot;name&quot; attribute</p>
    <asp:TextBox ID="ASPTBFirstName" runat="server" placeholder="Enter Name. . ." Height="22px"></asp:TextBox>

    <button type="submit">Search</button>
    <asp:SqlDataSource ID="SDSASPInputCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>" SelectCommand="SELECT TOP 5 customerID, firstName, lastName FROM Customers WHERE (firstName LIKE @search + '%') OR (@search IS NULL)" CancelSelectOnNullParameter="False" ProviderName="<%$ ConnectionStrings:CustomerDBConnectionString.ProviderName %>">
        <SelectParameters>
            <asp:ControlParameter ControlID="ASPTBFirstName" Name="search" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SDSASPInputCustomers">
    </asp:GridView>


    <h2>Query String</h2>
    <p>This example shows how to set the SqlDataSource up to get a value from a QueryString parameter in the url (eg: Default.aspx?key=value).&nbsp; Click on the link below to get a specific record</p>
    <p>Select records like &quot;Mik&quot;: <a href="e_SqlDataSourceParameters.aspx?firstName=Mitch">SqlDataSource.aspx?firstName=Mitch</a></p>
    <p>Select records like &quot;Sav&quot;: <a href="e_SqlDataSourceParameters.aspx?firstName=Sar">SqlDataSource.aspx?firstName=Sar</a></p>
    <asp:SqlDataSource ID="SDSQueryStringCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>" SelectCommand="SELECT TOP 5 customerID, firstName, lastName FROM Customers WHERE (firstName LIKE @search + '%') OR (@search IS NULL)" CancelSelectOnNullParameter="False" ProviderName="<%$ ConnectionStrings:CustomerDBConnectionString.ProviderName %>">
        <SelectParameters>
            <asp:QueryStringParameter Name="search" QueryStringField="firstName" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" DataSourceID="SDSQueryStringCustomers">
    </asp:GridView>



</asp:Content>
