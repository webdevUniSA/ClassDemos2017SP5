<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="c_SingleValueDataBinding.aspx.cs" Inherits="WebDev2017.Week4.SimpleDataBinding.c_SingleValueDataBinding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMainContent" runat="server">
      <h2>Simple (Single Value) Data Binding</h2>
        First Name:
        <input type="text" name="firstName" value='<%# firstName %>' /><br />
        <asp:Button runat="server" Text="Save" /><br />
        Entered Value: <%: firstName %>
</asp:Content>
