<%@ Page Title="My Test Form" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="TestWebForm2.aspx.cs" Inherits="WebDev2017.Week2.WebForms.TestWebForm2" %>

<asp:Content runat="server" ContentPlaceHolderID="CPMainContent">
        <hr />
        <input type="submit" value="Save" />
        <button type="submit">Save with Validation</button>
        <button type="submit" formnovalidate="">Save No Validation</button>
        <button type="reset">Clear</button>
        <hr />

        <label for="TBFirstName">First Name:</label><br />
            <input type="text" id="TBFirstName" name="firstName" required=""  value='<%: firstName %>' autofocus /><br />

        <label>Last Name<br />
            <input type="text" name="lastName" placeholder="Last Name.." title="Last Name" runat="server" /><br />
        </label>
</asp:Content>