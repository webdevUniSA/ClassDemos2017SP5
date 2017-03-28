<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="b_ReadingValues.aspx.cs" Inherits="WebDev2017.Week4.SimpleDataBinding.b_ReadingValues" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <h2>Standard HTML TextBox</h2>
    First Name:
        <input type="text" name="firstNameHtml" /><br />
    <button type="submit">Save</button><br />
    Entered Value: <%: Request.Form["firstNameHtml"] %>
    <hr />

    <h2>Standard HTML TextBox with C# Value</h2>
    First Name:
        <input type="text" name="firstNameCSharpVal" value='<%: firstName %>' /><br />
    <button type="submit">Save</button><br />
    Entered Value: <%= Request.Form["firstNameCSharpVal"] + "<br />Code behind: " + firstName %>

    <h2>Standard HTML TextBox with runat=server (HTML Control)</h2>
    First Name:
        <input type="text" id="TBFirstNameHtmlControl" runat="server" /><br />
    <button type="submit">Save</button><br />
    Entered Value: <%: Request.Form[TBFirstNameHtmlControl.UniqueID] %>

    <h2>Standard ASP TextBox (Server Control)</h2>
    First Name:
        <asp:TextBox runat="server" ID="TBFirstName"></asp:TextBox><br />
    <button type="submit">Save</button><br />
    Entered Value: <%: TBFirstName.Text %>

    <hr />
    <hr />
</asp:Content>
