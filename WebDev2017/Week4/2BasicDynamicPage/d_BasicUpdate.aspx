<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="d_BasicUpdate.aspx.cs" Inherits="WebDev2017.Week4.BasicDynamicPage.d_BasicUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMainContent" runat="server">
    <h2>Edit Customer</h2>
    <p>Pass this page a customerID in the query string using record=x and the corresponding customer record will be pulled from the database.</p>
    <label>CustomerID: <span><%: customerID %></span></label><br />
    <label>First Name:
        <input type="text" name="firstName" value='<%: firstName %>' /></label><br />
    <label>Last Name:
        <input type="text" name="lastName" value='<%: lastName %>' /></label><br />
    <input type="submit" value="Save" />
    <a href="BasicDBAccess.aspx">Cancel</a>
</asp:Content>
