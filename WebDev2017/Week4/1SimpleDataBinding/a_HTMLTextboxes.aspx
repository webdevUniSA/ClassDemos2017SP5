<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="a_HTMLTextboxes.aspx.cs" Inherits="WebDev2017.Week4.SimpleDataBinding.a_HTMLTextboxes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <h2>Standard HTML TextBox</h2>
    First Name:
        <input type="text" name="firstNameHtml" value='<%: Request.Form["firstNameHtml"] %>' /><br />
    <%: Request.Form["firstNameHtml"] %><button type="submit">Save</button>
    <hr />

    <h2>Standard HTML TextBox with runat=server (HTML Control)</h2>
    First Name:
        <input type="text" id="TBFirstNameHtmlControl" runat="server" />
    Text was: <%: Request.Form[TBFirstNameHtmlControl.UniqueID] %><br />
    <button type="submit">Save</button>

    <h2>Standard ASP TextBox (Server Control)</h2>
    First Name:
    <!-- Add ASP.NET Text Box and set ID to TBFirstName -->
    <asp:TextBox runat="server" ID="TBFirstName" ClientIDMode="Static"></asp:TextBox>
        Text was: <%: Request.Form[TBFirstName.UniqueID] %><br />

    <br />
    <button type="submit">Save</button>

    <hr />
    <hr />
</asp:Content>
