<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="c_AutomatedDataAccess.aspx.cs" Inherits="WebDev2017.Week4.BasicDynamicPage.c_AutomatedDataAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
        <label><input type="text" name="firstName" placeholder="Search by First Name..." /></label>
    <input type="submit" value="Search" /><hr />

    <asp:GridView ID="GVCustomers" runat="server" AutoGenerateColumns="True" DataSourceID="SDSCustomers">
        <Columns>
<%--            <asp:BoundField DataField="customerID" HeaderText="customerID" InsertVisible="False" ReadOnly="True" SortExpression="customerID" />--%>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SDSCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerDBConnectionString %>" SelectCommand="SELECT * FROM [Customers] WHERE ([firstName] LIKE '%' + @firstName + '%')">
        <SelectParameters>
            <asp:FormParameter FormField="firstName" Name="firstName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
