<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="f_SinglePageApplication.aspx.cs" Inherits="WebDev2017.Week4.BasicDynamicPage.f_SinglePageApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMainContent" runat="server">
     <div runat="server" id="divView">
            <h2>View Record</h2>
            <asp:Button ID="BEdit" runat="server" Text="Edit" OnClick="Button_Click" />
            <asp:Button ID="BDelete" runat="server" Text="Delete" OnClick="Button_Click" />
            <asp:Button ID="BNew" runat="server" Text="New" OnClick="Button_Click" />
        </div>
        <div runat="server" id="divEdit">
            <h2>Edit Record</h2>
            <asp:Button ID="BSaveEdit" runat="server" Text="Save" OnClick="Button_Click" />
            <asp:Button ID="BCancelEdit" runat="server" Text="Cancel" OnClick="Button_Click" />
        </div>
        <div runat="server" id="divInsert">
            <h2>Insert Record</h2>
            <asp:Button ID="BSaveInsert" runat="server" Text="Save" OnClick="Button_Click" />
            <asp:Button ID="BCancelInsert" runat="server" Text="Cancel" OnClick="Button_Click" />
        </div>
        <div runat="server" id="divNothing">
            <h2>No Record</h2>
            <asp:Button ID="BNewNothing" runat="server" Text="New" OnClick="Button_Click" />
            <asp:Button ID="BSelect" runat="server"  Text="Select Record"  OnClick="Button_Click" />
        </div>
</asp:Content>
