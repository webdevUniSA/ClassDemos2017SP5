<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="b_AutomatedTable.aspx.cs" Inherits="WebDev2017.Week4.BasicDynamicPage.b_AutomatedTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <label><input type="text" name="firstName" placeholder="Search by First Name..." /></label>
    <input type="submit" value="Search" /><hr />
    <asp:GridView ID="GVCustomers" runat="server">
        <Columns>
            <asp:BoundField DataField="customerID" />
        </Columns>
    </asp:GridView>
    
</asp:Content>
